//
// Created by os on 5/12/23.
//

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"
#include "../h/PCB.hpp"
#include "../h/Riscv.hpp"

MemoryAllocator::MemBlock* MemoryAllocator::freeHead = 0;
MemoryAllocator::MemBlock* MemoryAllocator::usedHead = 0;
bool MemoryAllocator::initialized = 0;

void MemoryAllocator::init() {
    if(initialized)
        return;
    initialized=1;
    freeHead = (MemBlock*) HEAP_START_ADDR;
    freeHead->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemBlock));
    freeHead->next = nullptr;
    usedHead=nullptr;
}

void *MemoryAllocator::mem_alloc(size_t size) {
    init();
    MemBlock* cur = freeHead, *prev=nullptr;
    for(;cur;prev=cur,cur=cur->next)
        if(cur->size>=size)
            break;
    if(!cur)
        return nullptr;
    size_t rem = cur->size-size;
    if(rem>=MEM_BLOCK_SIZE+sizeof(MemBlock)){
        cur->size=size;
        size_t offs = sizeof(MemBlock) + size;
        MemBlock* newBlock = (MemBlock*)((char*)cur+offs);
        if(prev)
            prev->next=newBlock;
        else
            freeHead=newBlock;
        newBlock->next=cur->next;
        newBlock->size=rem-sizeof(MemBlock);
    }
    else {
        if (prev)
            prev->next = cur->next;
        else
            freeHead = cur->next;
    }
    if(usedHead)
        cur->next=usedHead;
    usedHead=cur;
    return (char*)cur+sizeof(MemBlock);
}

int MemoryAllocator::mem_free(void * block) {
    init();
    MemBlock* cur = usedHead, *prev=nullptr;
    for(;cur;prev=cur,cur=cur->next)
        if((char*)cur+2*sizeof(MemBlock) == (char*) block)
            break;
    if(!cur || (char*)cur+2*sizeof(MemBlock) != (char*) block || ((char*)cur - sizeof(MemBlock)<0))
        return -1;
    if(prev)
        prev->next=cur->next;
    else
        usedHead=cur->next;
    cur -= sizeof(MemBlock);
    insertFreeBlock(cur); // fix
    return 0;
}

void MemoryAllocator::insertFreeBlock(void * block) {
    MemBlock* cur=freeHead, *prev=nullptr;
    MemBlock* newBlock = (MemBlock*) block;
    if(!cur) {
        freeHead = newBlock;
        return;
    }
    for(;cur;prev=cur,cur=cur->next)
        if(cur>newBlock)
            break;
    if(!prev) {
        newBlock->next=freeHead;
        freeHead = newBlock;
    }
    else {
        prev->next = newBlock;
        newBlock->next=cur;
    }
    //merge if possible
    mergeBlocks(newBlock);
    mergeBlocks(prev);
}

void MemoryAllocator::mergeBlocks(void * block) {
    MemBlock* cur = (MemBlock*) block;
    if(!cur)
        return;
    if(cur->next && (char*)cur+cur->size+sizeof(MemBlock)==(char*)cur->next){
        cur->size+=cur->next->size+sizeof (MemBlock);
        cur->next=cur->next->next;
    }
}

void *MemoryAllocator::kmalloc(size_t size) {
    return MemoryAllocator::mem_alloc(size);
}

uint64 MemoryAllocator::kfree(void * ptr) {
    return MemoryAllocator::mem_free(ptr);
}

void MemoryAllocator::memAllocH() {
    size_t size;
    __asm__ volatile("mv %0, a1" : "=r"(size));
    size*=MEM_BLOCK_SIZE;
    void* adr = kmalloc(size);
    __asm__ volatile("mv a0,%0" : : "r"((uint64)adr));
    Riscv::w_a0_sscratch();
}

void MemoryAllocator::memFreeH() {
    uint64 adr;
    __asm__ volatile("mv %0, a1" : "=r"(adr));
    uint64 ret = kfree((void*) adr);
    __asm__ volatile("mv a0,%0" :: "r"(ret));
    Riscv::w_a0_sscratch();
}


