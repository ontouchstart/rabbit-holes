#include "partition.h"

static void exchange(char *a, char *b) {
    char temp = *a;
    *a = *b;
    *b = temp;
}

void partition(char A[], int M, int N, int F, int *final_I, int *final_J) {
    char X = A[F];

    int I = M;
    int J = N;

up:
    for (; I <= N; I++) {
        if (X < A[I]) goto down;
    }
    I = N;

down:
    for (; J >= M; J--) {
        if (A[J] < X) goto change;
    }
    J = M;

change:
    if (I < J) {
       exchange(&A[I], &A[J]); 
       I = I + 1;
       J = J - 1;
       goto up;
    }
    else if (I < F) {
       exchange(&A[I], &A[F]); 
       I = I + 1;
    }
    else if (F < J) {
       exchange(&A[F], &A[J]); 
       J = J - 1;
    }
    *final_I = I;
    *final_J = J;
}

