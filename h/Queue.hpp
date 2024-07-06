//
// Created by os on 5/16/23.
//

#ifndef PROJECT_BASE_V1_1_QUEUE_HPP
#define PROJECT_BASE_V1_1_QUEUE_HPP

#include "../h/MemoryAllocator.hpp"
template<typename T>
class Queue{
private:
    struct Elem{
        T* data;
        Elem* next;

        Elem(T* data, Elem* next): data(data), next(next){}
        void * operator new(size_t);
        void operator delete(void *);
    };

    Elem* head, *tail;
    void * operator new(size_t);
    void operator delete(void *);
public:
    Queue(): head(nullptr), tail(nullptr){}

    Queue(const Queue<T> &) = delete;

    Queue<T> &operator=(const Queue<T> &) = delete;

    void insertFirst(T* data){
        Elem* e = new Elem(data, head);
        head=e;
        if(!tail)
            tail=head;
    }

    void insertLast(T* data){
        Elem* e = new Elem(data, nullptr);
        if(tail){
            tail->next=e;
            tail=e;
        }
        else
            head=tail=e;
    }

    T* removeFirst(){
        if(!head)
            return nullptr;
        Elem* e = head;
        head = head->next;
        if(!head)
            tail=nullptr;
        T* ret = e->data;
        //delete e;
        return ret;
    }

    T* peekFirst(){
        if(!head)
            return nullptr;
        return head->data;
    }

    T* removeLast(){
        if(!head)
            return nullptr;
        Elem* prev=0;
        for(Elem* curr = head; curr && curr!=tail; curr=curr->next)
            prev=curr;
        Elem* e = tail;
        if(prev)
            prev->next=nullptr;
        else
            head=nullptr;
        tail=prev;
        T* ret = e->data;
        //delete e;
        return ret;
    }

    T* peekLast(){
        if(!tail)
            return nullptr;
        return tail->data;
    }

};

template<typename T>
void Queue<T>::operator delete(void * ptr) {
    MemoryAllocator::kfree(ptr);
}

template<typename T>
void *Queue<T>::operator new(size_t size) {
    return MemoryAllocator::kmalloc(size);
}

template<typename T>
void Queue<T>::Elem::operator delete(void * ptr) {
    MemoryAllocator::kfree(ptr);
}

template<typename T>
void *Queue<T>::Elem::operator new(size_t size) {
    return MemoryAllocator::kmalloc(size);
}

#endif //PROJECT_BASE_V1_1_QUEUE_HPP
