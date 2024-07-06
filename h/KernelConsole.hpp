//
// Created by os on 5/29/23.
//

#ifndef PROJECT_BASE_V1_1_KERNELCONSOLE_HPP
#define PROJECT_BASE_V1_1_KERNELCONSOLE_HPP

#include "../lib/console.h"
#include "../lib//hw.h"
#include "../h/Riscv.hpp"
#include "../h/ConsoleBuffer.hpp"

class KernelConsole {
    static ConsoleBuffer* inputBuffer;
    static ConsoleBuffer* outputBuffer;
public:
    static void init();
    static bool toEnd;
private:
    static bool initialized;
    static uint64 toPrint;
    static char __getc();
    static void __putc(char c);

    static void putcH();
    static void getcH();
public:
    static void consoleWrapper(void* p);
    static void setEnd() {toEnd=1;}
    friend class Riscv;
};


#endif //PROJECT_BASE_V1_1_KERNELCONSOLE_HPP
