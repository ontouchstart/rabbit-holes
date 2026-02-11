#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "quicksort.h"

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
