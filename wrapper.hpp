#pragma once


#ifndef WRAPPER
#define WRAPPER
namespace test
{
	/// <summary>
	/// 	Class: Fsk modem connection, user wrapper of the queues and shared memory.
	/// </summary>
	class TestWrapper
	{
        public:
            TestWrapper(void);

            ~TestWrapper(void);

            void cppstrupr(char* str);

            long unsigned int cppstrlen(char* str, size_t size, bool sval);

            void cppmemset(char* str); 

    };
}

#endif //WRAPPER