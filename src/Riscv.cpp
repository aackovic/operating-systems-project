//
// Created by os on 5/15/23.
//

#include "../h/Riscv.hpp"
#include "../lib/console.h"
#include "../h/PCB.hpp"
#include "../h/KernelSemaphore.hpp"
#include "../h/KernelConsole.hpp"

void Riscv::popSppSpie() {
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::handleSupervisorTrap() {
    __asm__ volatile("mv %0, a4" : "=r"(PCB::regA4));
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    volatile uint64 scause = r_scause();
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){
        // interrupt : NO, cause code: environment call from S-mode (9)
        volatile uint64 sepc = r_sepc() + 4;
        volatile uint64 sstatus = r_sstatus();
        volatile uint64 a0;
        __asm__ volatile("mv %0, a0" : "=r"(a0));

        if(a0==0x01){
            //mem_alloc
            MemoryAllocator::memAllocH();
        }
        else if(a0==0x02){
            //mem_free
            MemoryAllocator::memFreeH();
        }
        else if(a0==0x11){
            //thread_create
            PCB::threadCreateH();
        }
        else if(a0==0x12){
            //thread_exit
            PCB::threadExitH();
        }
        else if(a0==0x13){
            //thread_dispatch
            PCB::threadDispatchH();
        }
        else if(a0==0x14){
            //thread_join
            PCB::threadJoinH();
        }
        else if(a0==0x21){
            //sem_open
            KernelSemaphore::semOpenH();
        }
        else if(a0==0x22){
            //sem_close
            KernelSemaphore::semCloseH();
        }
        else if(a0==0x23){
            //swm_wait
            KernelSemaphore::semWaitH();
        }
        else if(a0==0x24){
            //sem_signal
            KernelSemaphore::semSignalH();
        }
        else if(a0==0x31){
            //time_sleep
            PCB::timeSleepH();
        }
        else if(a0==0x41){
            //getc

            KernelConsole::getcH();
        }
        else if(a0==0x42){
            //putc

            KernelConsole::putcH();
        }

        w_sepc(sepc);
        w_sstatus(sstatus);
        //privMode
        /*if(PCB::running->mainOrConsole)
            Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
        else
            Riscv::mc_sstatus(Riscv::SSTATUS_SPP);*/
    }
    else if(scause == 0x8000000000000001UL){
        // interrupt, yes, cause code: supervisor software interrupt (timer)
        mc_sip(SIP_SSIP);
        PCB::timeSliceCounter++;
        PCB::decreaseSleepingTime();
        PCB::removeSleepy();
        if(PCB::timeSliceCounter >= PCB::running->getTimeSlice()) {
            volatile uint64 sepc = r_sepc();
            volatile uint64 sstatus = r_sstatus();
            PCB::timeSliceCounter=0;
            PCB::dispatch();
            w_sepc(sepc);
            w_sstatus(sstatus);
        }
        //PCB::running->changeRegime();
    }
    else if(scause == 0x8000000000000009UL){
        // interrupt, yes, cause code: supervisor external interrupt (console)
        //console_handler();
        int num = plic_claim();
        if(num==0x0a && (*((char*)CONSOLE_STATUS)&CONSOLE_RX_STATUS_BIT)){
            char ret = *(char*)CONSOLE_RX_DATA;
            KernelConsole::inputBuffer->put(ret);
        }
        plic_complete(num);
    }
    else if(scause == 0x02UL){
        __putc('2');

    }
    else if(scause == 0x05UL){
        //__putc('5');
    }
    else{
        // unexpected trap cause
        // print(scause) (sepc) (stval)
    }
}

void Riscv::userMainWrapper(void *) {
    userMain();
}
