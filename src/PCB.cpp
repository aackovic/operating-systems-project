//
// Created by os on 5/16/23.
//

#include "../h/PCB.hpp"
#include "../h/Riscv.hpp"
#include "../h/KernelSemaphore.hpp"
#include "../h/syscall_c.hpp"

uint64 PCB::timeSliceCounter=0;
PCB *PCB::running = nullptr;
PCB *PCB::sleepyHead = nullptr;
uint64 PCB::regA4=0;

void PCB::dispatch() {
    PCB* old = running;
    if(!old->isFinished() && !old->isSleeping()&&!old->isSuspended()){
        Scheduler::put(old);
    }
    running = Scheduler::get();
    if(!running)
        return;
    running->state=RUNNING;
    //running->changeRegime();
    PCB::contextSwitch(&old->context,&running->context);
}

void PCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->arg);
    timeSliceCounter=0;
    running->changeState(FINISHED);
    thread_exit();
}

void *PCB::operator new(size_t size) {
    return MemoryAllocator::kmalloc(size);
}

void PCB::operator delete(void * ptr) {
    MemoryAllocator::kfree(ptr);
}

void PCB::threadCreateH() {
    PCB** handle;
    uint64 start_routine;
    uint64 arg;
    __asm__ volatile("mv %0, a1" : "=r"(handle));
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    __asm__ volatile("mv %0, a3" : "=r"(arg));
    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) arg, (void *) regA4, DEFAULT_TIME_SLICE);

    (*handle)=newPCB;

    if(!newPCB)
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else{
        newPCB->start();
        __asm__ volatile("li a0, 0");
    }
    Riscv::w_a0_sscratch();
}

void PCB::threadExitH() {
    dispatch();
    __asm__ volatile("li a0, 0");
    Riscv::w_a0_sscratch();
}

void PCB::threadDispatchH() {
    timeSliceCounter=0;
    dispatch();
}

void PCB::threadJoinH() {
    running->changeState(SUSPENDED);
    dispatch();
}

void PCB::timeSleepH() {
    time_t time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    timeSliceCounter=0;
    running->setSleepingTime(time);
    insertSleepy();
    dispatch();
    __asm__ volatile("li a0, 0");
    Riscv::w_a0_sscratch();
}

PCB::~PCB() {
    MemoryAllocator::kfree(stack);
}

void PCB::insertSleepy() {
    running->changeState(SLEEPING);
    PCB *prev= nullptr;
    for(PCB* curr = sleepyHead; curr; curr=curr->nextSleepy){
        if(curr->getSleepingTime()  > running->getSleepingTime()){
            running->nextSleepy=curr;
            running->nextSleepy->setSleepingTime(running->nextSleepy->getSleepingTime()-running->getSleepingTime());
            break;
        }
        running->setSleepingTime(running->getSleepingTime()-curr->getSleepingTime());
        prev=curr;
    }
    if(!prev)
        sleepyHead=running;
    else
        prev->nextSleepy=running;
}

void PCB::removeSleepy() {
    if(!sleepyHead)
        return;
    PCB* curr;
    PCB *prev = nullptr;
    for(curr = sleepyHead; curr && !curr->getSleepingTime();curr=curr->nextSleepy, sleepyHead=curr){
        if(prev) {
            prev->nextSleepy = nullptr;
            Scheduler::put(prev);
        }
        prev=curr;
    }
    if(prev){
        prev->nextSleepy=nullptr;
        Scheduler::put(prev);
    }
}

void PCB::changeRegime() {
    if(mainOrConsole)
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}




