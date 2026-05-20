#include <stdio.h>
#include <stdlib.h>

int globalVar = 100;

void checkSegment(int *ptr) {

    int stackVar;

    int *heapVar = (int *)malloc(sizeof(int));

    printf("Address passed: %p\n", ptr);

    printf("Global Variable Address: %p\n", &globalVar);

    printf("Stack Variable Address: %p\n", &stackVar);

    printf("Heap Variable Address: %p\n", heapVar);

    free(heapVar);
}

int main() {

    int localVar;

    checkSegment(&localVar);

    return 0;
}
