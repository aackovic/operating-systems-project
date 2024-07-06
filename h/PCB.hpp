//
// Created by os on 5/16/23.
//

#ifndef PROJECT_BASE_V1_1_PCB_HPP
#define PROJECT_BASE_V1_1_PCB_HPP

#include "../lib/hw.h"
#include "Scheduler.hpp"

class PCB {
private:
    //constants
    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
    //struct
    struct Context{
        uint64 ra;
        uint64 sp;
    };
public:
    ///change?
    enum State{
        READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING
    };

    using Body = void(*)(void *);
    static PCB* running;
private:
    //saving regA4 because interpreter uses it
    static uint64 regA4;

    ///change?
    bool rcs=0;

    //pcb variables
    State state;
    Body body;
    void* stack;
    Context context;
    uint64 timeSlice;
    void * arg;
    uint64 sleepingTime=0;

    //sleepyThread
    static PCB* sleepyHead;
    PCB* nextSleepy = nullptr;

    //variable for regime change
    bool mainOrConsole=false;

    ///change?
    uint64 sscratch;
public:
    explicit PCB(Body body, void* arg, void* stack, uint64 timeSlice):
        state(READY),
        body(body),
        stack(stack),
        context({
            (uint64) &threadWrapper,
            (uint64) ((char *) stack + DEFAULT_STACK_SIZE)
        }),
        timeSlice(timeSlice),
        arg(arg)
    {}

    void* operator new (size_t);
    void operator delete (void*);

    ~PCB();
    static void contextSwitch(Context* oldContext, Context* runningContext);
    static void dispatch();

    static uint64 timeSliceCounter;

    //wrapper
    static void threadWrapper();

    //getters setters etc.
    bool isFinished() const { return state==FINISHED;}
    void start() { Scheduler::put(this);}
    uint64 getTimeSlice() const { return timeSlice;}
    void setSleepingTime(uint64 t) { sleepingTime=t;}
    uint64  getSleepingTime() const {return sleepingTime;}
    static void decreaseSleepingTime() {if(sleepyHead) sleepyHead->sleepingTime--;}
    bool isSleeping() const { return state==SLEEPING;}
    bool isSuspended() const {return state==SUSPENDED;}
    void setMainOrConsole(bool mc) { mainOrConsole=mc;}
    void changeState(State s) { state=s;}
    void changeRegime();


    //handlers
    static void threadCreateH();
    static void threadExitH();
    static void threadDispatchH();
    static void threadJoinH();
    static void timeSleepH();

    //sleepyThreadFunctions
    static void insertSleepy();
    static void removeSleepy();

    //friend classes
    friend class Riscv;
    friend class KernelSemaphore;
    friend class Thread;
};


#endif //PROJECT_BASE_V1_1_PCB_HPP
