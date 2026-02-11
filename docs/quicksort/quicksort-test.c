#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void exchange(char *a, char *b) {
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

int main() {
    char str[] = "PARTITION";
    int n = strlen(str);
    int i = 0;
    int j = n-1;

    printf("%s\n", str);
    quicksort(str, i, j);
    printf("%s\n", str);
   
    return 0;
} 



