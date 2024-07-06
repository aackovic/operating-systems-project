//
// Created by os on 5/17/23.
//

#include "../h/syscall_cpp.hpp"

void * operator new(size_t size){
    return mem_alloc(size);
}

void operator delete(void * ptr){
    mem_free(ptr);
}

Thread::Thread(void (*body)(void *), void *arg) {
    myHandle=0;
    this->body=body;
    this->arg=arg;
}

Thread::Thread() {
    myHandle=0;
    body=&runWrapper;
    arg=(void*)this;
}

Thread::~Thread() {
    mem_free(myHandle);
    //delete myHandle;
}

int Thread::start() {
    if(!myHandle)
        return thread_create(&myHandle,body,arg);
    return -1;
}

void Thread::join() {
    if(!myHandle)
        return;
    thread_join(myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

void Thread::runWrapper(void * thread) {
    if(thread)
        ((Thread*) thread)->run();
}

void PeriodicThread::terminate() {

}

PeriodicThread::PeriodicThread(time_t period) {
    this->period=period;
}

void PeriodicThread::runWrapper(void * thread) {
    if(thread)
        ((PeriodicThread*) thread)->run();
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

Semaphore::Semaphore(unsigned int init) {
    if(sem_open(&myHandle,init))
        myHandle=0;
}

Semaphore::~Semaphore() {
    //delete myHandle;
}

int Semaphore::wait() {
    if(!myHandle)
        return -1;
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    if(!myHandle)
        return -1;
    return sem_signal(myHandle);
}
