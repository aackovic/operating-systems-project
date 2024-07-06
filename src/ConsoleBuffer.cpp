//
// Created by os on 6/28/23.
//

#include "../h/ConsoleBuffer.hpp"

ConsoleBuffer::ConsoleBuffer(int _cap): cap(_cap + 1), head(0), tail(0) {
    //buffer = (char*)mem_alloc(sizeof(int) * cap);
    itemAvailable = new KernelSemaphore(0);
    spaceAvailable = new KernelSemaphore(_cap);
    mutexHead = new KernelSemaphore(1);
    mutexTail = new KernelSemaphore(1);
}

ConsoleBuffer::~ConsoleBuffer() {
    /*putc('\n');
    printString("Buffer deleted!\n");
    while (getCnt() > 0) {
        char ch = buffer[head];
        putc(ch);
        head = (head + 1) % cap;
    }
    putc('!');
    putc('\n');*/

    MemoryAllocator::kfree(buffer);
    /*sem_close(itemAvailable);
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);*/
}

void ConsoleBuffer::put(char val) {
    spaceAvailable->wait();
    mutexTail->wait();

    buffer[tail] = val;
    tail = (tail + 1) % cap;

    mutexTail->signal();
    itemAvailable->signal();

}

char ConsoleBuffer::get() {
    itemAvailable->wait();
    mutexHead->wait();

    char ret = buffer[head];
    head = (head + 1) % cap;

    mutexHead->signal();
    spaceAvailable->signal();

    return ret;
}

int ConsoleBuffer::getCnt() {
    int ret;

    mutexHead->wait();
    mutexTail->wait();
    //sem_wait(mutexHead);
    //sem_wait(mutexTail);

    if (tail >= head) {
        ret = tail - head;
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    mutexHead->signal();
    //sem_signal(mutexTail);
    //sem_signal(mutexHead);

    return ret;
}