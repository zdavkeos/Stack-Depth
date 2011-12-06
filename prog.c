// Simple instrumented program

#include "stdio.h"
#include "stdlib.h"

void foo();
void bar();

int main(int argc, char** argv)
{
    int i;

    printf("calling foo 4 times\n");

    for (i = 0; i < 4; i++) {
        foo(4);
    }

    return 0;
}

void foo()
{
    bar();
}

void bar()
{
    
}
