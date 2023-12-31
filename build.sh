rm *.so *.o *.cxx test.py
swig  -python  -c++   -v test.i
gcc -fPIC -Wall -Wextra  -c test_wrap.cxx  wrapper.cpp  -DDEBUG -I/usr/include/python3.10
gcc -shared test_wrap.o wrapper.o -lstdc++  $(python3.10-config --ldflags)  -o _test.so 