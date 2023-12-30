
#include <ctype.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <iostream>

#include "wrapper.hpp"


namespace test
{
    TestWrapper::TestWrapper(void){};

    TestWrapper::~TestWrapper(void){};

    void TestWrapper::cppstrupr(char* str)
    {
        for(; *str; str++)
            *str = toupper((unsigned char) *str);
    }

    long unsigned int TestWrapper::cppstrlen(char* str, size_t size, bool sval)
    {
        std::cout << "cppstrlen called" << std::endl;
        if(sval == true){
            return size;
        }
        int len = 0;
        while(*str++)
            len++;
        return len;
    };

    void TestWrapper::cppmemset(char* str)
    {
        memset(str, 'C', sizeof(str));
    };
};