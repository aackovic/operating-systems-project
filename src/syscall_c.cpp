//
// Created by os on 5/12/23.
//

#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"

void* mem_alloc(size_t size){
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)(size + MEM_BLOCK_SIZE - 1)/ MEM_BLOCK_SIZE));
    __asm__ volatile("li a0,0x01");
    //call
    __asm__ volatile("ecall");
    //get result
    uint64 adr;
    __asm__ volatile("mv %0, a0" : "=r"(adr));
    return (void*) adr;
}

int mem_free(void* ptr){
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)ptr));
    __asm__ volatile("li a0, 0x02");
    //call
    __asm__ volatile("ecall");
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    return res;
}

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    void* stck = mem_alloc(DEFAULT_STACK_SIZE);
    if(!stck)
        return -1;
    __asm__ volatile("mv a4, %0" :: "r" ((uint64)stck));
    __asm__ volatile("mv a3, %0" :: "r" ((uint64)arg));
    __asm__ volatile("mv a2, %0" :: "r" ((uint64)start_routine));
    __asm__ volatile("mv a1, %0" :: "r" ((uint64)handle));
    __asm__ volatile("li a0, 0x11");

    __asm__ volatile("ecall");

    uint64 res;
    __asm__ volatile("mv a0, %0" : "=r"(res));
    return res;
}

int thread_exit(){
    //save
    __asm__ volatile("li a0, 0x12");
    //call
    __asm__ volatile("ecall");
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    return res;
}

void thread_dispatch(){
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");
}

void thread_join(thread_t handle) {
    //save
    __asm__ volatile("mv a1, %0" :: "r" ((uint64)handle));
    __asm__ volatile("li a0, 0x14");
    //call
    __asm__ volatile("ecall");
}

int sem_open(sem_t* handle, unsigned init){
    //save
    __asm__ volatile("mv a2, %0" :: "r"((uint64)init));
    __asm__ volatile("mv a1, %0" :: "r"((uint64)handle));
    __asm__ volatile("li a0, 0x21");
    //call
    __asm__ volatile("ecall");
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    return res;
}

int sem_close(sem_t handle){
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)handle));
    __asm__ volatile("li a0, 0x21");
    //call
    __asm__ volatile("ecall");
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    return res;
}

int sem_wait(sem_t id){
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)id));
    __asm__ volatile("li a0, 0x23");
    //call
    __asm__ volatile("ecall");
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    return res;
}

int sem_signal(sem_t id){
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)id));
    __asm__ volatile("li a0, 0x24");
    //call
    __asm__ volatile("ecall");
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    return res;
}

int time_sleep(time_t time){
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)time));
    __asm__ volatile("li a0, 0x31");
    //call
    __asm__ volatile("ecall");
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    return res;
}

char getc(){
    __asm__ volatile("li a0, 0x41");
    //call
    __asm__ volatile("ecall");
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    putc(res);
    return (char)res;
}

void putc(char c){
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)c));
    __asm__ volatile("li a0, 0x42");
    //call
    __asm__ volatile("ecall");
}
