//
// Created by os on 5/17/23.
//

#include "../h/KernelSemaphore.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/PCB.hpp"


uint64 KernelSemaphore::wait() {
    if(--val < 0)
        block();
    return 0;
}

uint64 KernelSemaphore::signal() {
    if(val++ < 0)
        unblock();
    return 0;
}


void KernelSemaphore::block() {
    blockedThreadsQueue.insertLast(PCB::running);
    PCB::running->state= PCB::SUSPENDED;
    PCB::dispatch();
}

void KernelSemaphore::unblock() {
    PCB* newRunning = blockedThreadsQueue.removeFirst();
    newRunning->state=PCB::READY;
    Scheduler::put(newRunning);
}

KernelSemaphore::~KernelSemaphore() {
    while(blockedThreadsQueue.peekFirst()){
        PCB* pcb = blockedThreadsQueue.removeFirst();
        pcb->rcs=1;
        Scheduler::put(pcb);
    }
}

void KernelSemaphore::semOpenH() {
    KernelSemaphore** handle;
    uint64 init;

    __asm__ volatile("mv %0, a1" : "=r"(handle));
    __asm__ volatile("mv %0, a2" : "=r"(init));

    KernelSemaphore* sem = new KernelSemaphore(init);
    (*handle) = sem;

    if(sem)
        __asm__ volatile("li a0, 0");
    else
        __asm__ volatile("li a0, 0xfffff");
    Riscv::w_a0_sscratch();

}

void KernelSemaphore::semCloseH() {
    KernelSemaphore* handle;
    __asm__ volatile("mv %0, a1" : "=r"(handle));
    delete handle;
    __asm__ volatile("li a0, 0");
    Riscv::w_a0_sscratch();
}

void KernelSemaphore::semWaitH() {
    KernelSemaphore* handle;
    __asm__ volatile("mv %0, a1" : "=r"(handle));
    handle->wait();
    if(!PCB::running->rcs)
        __asm__ volatile("li a0, 0");
    else
        __asm__ volatile("li a0, 1");
    Riscv::w_a0_sscratch();
}

void KernelSemaphore::semSignalH() {
    KernelSemaphore* handle;
    __asm__ volatile("mv %0, a1" : "=r"(handle));
    if(handle){
        handle->signal();
        __asm__ volatile("li a0, 0");
    }
    else{
        __asm__ volatile("li a0, 1");
    }
    Riscv::w_a0_sscratch();
}

void *KernelSemaphore::operator new(size_t size) {
    return MemoryAllocator::kmalloc(size);
}

void KernelSemaphore::operator delete(void * p) {
    MemoryAllocator::kfree(p);
}
