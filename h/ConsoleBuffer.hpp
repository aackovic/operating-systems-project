//
// Created by os on 6/28/23.
//

#ifndef PROJECT_BASE_V1_1_CONSOLEBUFFER_HPP
#define PROJECT_BASE_V1_1_CONSOLEBUFFER_HPP

#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"
#include "../h/KernelSemaphore.hpp"

class ConsoleBuffer{
private:
    int cap;
    char buffer[4096];
    int head, tail;

    KernelSemaphore* spaceAvailable;
    KernelSemaphore* itemAvailable;
    KernelSemaphore* mutexHead;
    KernelSemaphore* mutexTail;

public:
    ConsoleBuffer(int _cap);
    ~ConsoleBuffer();

    void put(char val);
    char get();

    int getCnt();

    friend class KernelConsole;
};

#endif //PROJECT_BASE_V1_1_CONSOLEBUFFER_HPP
