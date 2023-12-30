%module test

%{
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "wrapper.hpp"
%}

%include <pybuffer.i>
%pybuffer_mutable_string(char* str1)
%pybuffer_string(const char* str2)
%pybuffer_mutable_binary(char* str3, size_t size)
%pybuffer_binary(const char* str4, size_t size)


%inline %{

test::TestWrapper *wrapper = NULL;

test::TestWrapper* initWrapper() {
    wrapper = new test::TestWrapper();
    return wrapper;
}

void pystrupr(char *str1) {
  if(wrapper == NULL){
    printf("WRAPPER IS NULL");
    return;
  }
  wrapper->cppstrupr(str1);
}

size_t pystrlen(const char *str2, size_t size, bool sval) {
  if(wrapper == NULL){
    printf("WRAPPER IS NULL");
    return -1;
  }
  return wrapper->cppstrlen((char*)str2,size, sval);
}

void pymemset(char* str3, size_t size) {
  if(wrapper == NULL){
    printf("WRAPPER IS NULL");
    return;
  }
  return wrapper->cppmemset(str3);
}

void deleteWrapper() {
  if(wrapper == NULL){
    printf("WRAPPER IS NULL");
    return;
  }
  delete wrapper;
  wrapper = NULL;
}

// size_t funcb(const char* str4, size_t size) {
//     size_t tmp = 0;
//     for(size_t i = 0; i < size; ++i)
//         tmp += str4[i];
//     return tmp % 256;
// }
%}