//
// Created by os on 5/27/23.
//
#include "../h/userMain.hpp"
#include "../test/Threads_C_API_test.hpp"
#include "../test/Threads_C_API_test.hpp"
#include "../test/System_Mode_test.hpp"
#include "../test/Threads_CPP_API_test.hpp"
#include "../test/ConsumerProducer_C_API_test.hpp"
#include "../test/ThreadSleep_C_API_test.hpp"
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp"
#include "../test/ConsumerProducer_CPP_API_test.hpp"

void userMain(){
    //Threads_C_API_test();
    //System_Mode_test();
    //Threads_CPP_API_test();
    //producerConsumer_C_API();
    //producerConsumer_CPP_Sync_API();
    //testSleeping();
    testConsumerProducer();
}