//
// Created by os on 5/16/23.
//

#ifndef PROJECT_BASE_V1_1_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_SCHEDULER_HPP

#include "Queue.hpp"
class PCB;


class Scheduler {
private:
    static Queue<PCB> readyQueue;
public:
    static PCB *get();
    static void put(PCB* pcb);
};


#endif //PROJECT_BASE_V1_1_SCHEDULER_HPP
