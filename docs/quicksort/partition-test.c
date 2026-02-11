#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "partition.h"

void test(int f) {
    char str[] = "PARTITION";
    int m = 0;
    int n = strlen(str) - 1;
    int i = m;
    int j = n;
    printf("f=%d\nBefore:\t%s\n", f, str);
    partition(str, m, n, f, &i, &j);
    printf("After:\t%s\n", str);
}

int main() {
    char str[] = "PARTITION";
    for (int f = 0; f < strlen(str); f++) {
       test(f);
    }
    return 0;
} 
