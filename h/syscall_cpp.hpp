//
// Created by os on 5/11/23.
//

#ifndef PROJECT_BASE_V1_1_SYSCALL_CPP_HPP
#define PROJECT_BASE_V1_1_SYSCALL_CPP_HPP

#include "syscall_c.hpp"
#include "PCB.hpp"

void* operator new (size_t);
void operator delete (void*);

class Thread {
public:
    Thread(void (*body)(void *), void *arg);
    virtual ~Thread();
    int start();
    void join();
    static void dispatch();
    static int sleep(time_t);
protected:
    Thread();
    virtual void run() {}
private:
    thread_t myHandle;
    void (*body)(void *);
    void *arg;
    static void runWrapper(void *);
};
class Semaphore {
public:
    Semaphore(unsigned init = 1);
    virtual ~Semaphore();
    int wait();
    int signal();
private:
    sem_t myHandle;
};
class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
private:
    time_t period;
    static void runWrapper(void *);
};
class Console {
public:
    static char getc ();
    static void putc (char);
};

#endif //PROJECT_BASE_V1_1_SYSCALL_CPP_HPP
