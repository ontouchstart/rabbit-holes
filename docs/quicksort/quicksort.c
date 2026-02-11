#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "quicksort.h"
#include "partition.h"

void quicksort(char A[], int M, int N) {
    int I;
    int J;
    int F = M + rand() % (N - M + 1);
    if (M < N) {
        partition(A, M, N, F, &I, &J);
        quicksort(A, M, J); 
        quicksort(A, I, N); 
    }
}
