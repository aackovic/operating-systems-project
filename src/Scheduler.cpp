//
// Created by os on 5/16/23.
//

#include "../h/Scheduler.hpp"

Queue<PCB> Scheduler::readyQueue;

PCB *Scheduler::get() {
    return readyQueue.removeFirst();
}

void Scheduler::put(PCB *pcb) {
    readyQueue.insertLast(pcb);
}
