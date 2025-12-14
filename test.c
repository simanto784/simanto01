#include "mul.h"
#include <stdio.h>

int main()
{
    if (multiply(2, 3) != 6)
    {
        printf("Test Failed\n");
        return 1;   // non-zero = CI FAIL
    }

    printf("Test Passed\n");
    return 0;       // zero = CI PASS
}
