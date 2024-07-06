#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/Queue.hpp"
#include "../h/PCB.hpp"
#include "../h/Riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/KernelConsole.hpp"


static void userMainW(void * p){
    userMain();
}

int main(){
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    PCB* mainThr = new PCB(0,0,0,0);
    mainThr->setMainOrConsole(true);
    PCB::running=mainThr;
    mainThr->changeState(PCB::RUNNING);
    PCB* userThr = new PCB(&userMainW,0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),DEFAULT_TIME_SLICE);
    userThr->start();

    KernelConsole::init();

    PCB* consoleThr = new PCB(&KernelConsole::consoleWrapper,0,MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),DEFAULT_TIME_SLICE);
    consoleThr->setMainOrConsole(true);
    consoleThr->start();

    //enable interrupts
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while(!userThr->isFinished()){
        //putc('m');
        thread_dispatch();
    }
    KernelConsole::setEnd();



    while(!consoleThr->isFinished() && !consoleThr->isSuspended())
    {
        thread_dispatch();
    }

    //disable interrupts
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    return 0;
}