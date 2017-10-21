#include <stdio.h>
#include "clib.h"

extern "C"{
    void add1(int* a){
        *a = *a + 1;
    }


    void add1vec(int** a, int *n){
        printf("Quantidade de termos %d \n", *n);
        int * ap = (*a);
        for (int i = 0; i < *n; ++i)
        {   
            printf("a[%d] = %d\n", i, ap[i]);
            ap[i] += 1;

        }
    }

}

