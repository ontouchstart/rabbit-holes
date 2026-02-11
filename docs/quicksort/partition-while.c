#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static void exchange(char *a, char *b) {
    char temp = *a;
    *a = *b;
    *b = temp;
}

void partition(char A[], int M, int N, int F, int *final_I, int *final_J) {
    char X = A[F];
    int I = M;
    int J = N;

    while (1) {
        // Equivalent to 'up:' loop
        while (I <= N && A[I] <= X) {
            I++;
        }

        // Equivalent to 'down:' loop
        while (J >= M && A[J] >= X) {
            J--;
        }

        if (I < J) {
            // Equivalent to 'change:' swap and 'goto up'
            exchange(&A[I], &A[J]);
            I++;
            J--;
        } else {
            // Termination logic
            if (I < F) {
                exchange(&A[I], &A[F]);
                I++;
            } else if (F < J) {
                exchange(&A[F], &A[J]);
                J--;
            }
            break; // Exit the main loop
        }
    }

    *final_I = I;
    *final_J = J;
}

