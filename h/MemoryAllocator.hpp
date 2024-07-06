//
// Created by os on 5/11/23.
//

#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"
#include "../lib/mem.h"

class MemoryAllocator{
private:
    struct MemBlock{
        size_t size;
        struct MemBlock* next;
    };
    static MemBlock* freeHead;
    static MemBlock* usedHead;
    static bool initialized;
    static void init();
    static void insertFreeBlock(void *);
    static void mergeBlocks(void *);
    static void memAllocH();
    static void memFreeH();
    static void* mem_alloc(size_t size);
    static int mem_free (void*);
public:
    static void* kmalloc(size_t size);
    static uint64 kfree(void*);

    friend class Riscv;
};


#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
