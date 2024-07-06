//
// Created by os on 5/29/23.
//

#include "../h/KernelConsole.hpp"

bool KernelConsole::initialized;
ConsoleBuffer* KernelConsole::inputBuffer;
ConsoleBuffer* KernelConsole::outputBuffer;
bool KernelConsole::toEnd;
uint64 KernelConsole::toPrint=0;

void KernelConsole::putcH() {
    char c;
    __asm__ volatile("mv %0, a1" : "=r"(c));
    __putc(c);
}

void KernelConsole::getcH() {
    char c = __getc();
    __asm__ volatile ("mv a0, %0" :: "r" ((uint64)c));
    Riscv::w_a0_sscratch();
}

char KernelConsole::__getc() {
    char c = inputBuffer->get();
    return c;
}

void KernelConsole::__putc(char c) {
    outputBuffer->put(c);
    toPrint++;
}

void KernelConsole::consoleWrapper(void *p) {
    while(true){
        if(toEnd && toPrint==0) {
            PCB::running->changeState(PCB::FINISHED);
            thread_exit();
        }

        if((*((char*)CONSOLE_STATUS)&CONSOLE_TX_STATUS_BIT)){
            char c = outputBuffer->get();
            *(char*)CONSOLE_TX_DATA=c;
            toPrint--;
        }
        else
            thread_dispatch();
    }
}

void KernelConsole::init() {
    if(!initialized){
        inputBuffer=new ConsoleBuffer(4096);
        outputBuffer=new ConsoleBuffer(4096);
        initialized=1;
        toEnd=0;
    }
}
