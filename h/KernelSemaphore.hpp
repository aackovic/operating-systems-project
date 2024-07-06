//
// Created by os on 5/17/23.
//

#ifndef PROJECT_BASE_V1_1_KERNELSEMAPHORE_HPP
#define PROJECT_BASE_V1_1_KERNELSEMAPHORE_HPP

#include "../lib/hw.h"
#include "../h/PCB.hpp"
#include "../h/Queue.hpp"
#include "../h/Riscv.hpp"

class KernelSemaphore {
public:
    explicit KernelSemaphore(int init=1) : val(init) {};

    virtual ~KernelSemaphore();

    void block();
    void unblock();

    uint64 wait();
    uint64 signal();

    void* operator new(size_t size);
    void operator delete(void* );

private:

    int val;
    Queue<PCB> blockedThreadsQueue;

    static void semOpenH();
    static void semCloseH();
    static void semWaitH();
    static void semSignalH();

    friend class Riscv;
};


#endif //PROJECT_BASE_V1_1_KERNELSEMAPHORE_HPP
