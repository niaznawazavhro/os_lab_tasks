#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {

    if(argc != 4) {
        printf("Usage: ./a.out num1 op num2\n");
        return 1;
    }

    int a = atoi(argv[1]);
    int b = atoi(argv[3]);

    char *op = argv[2];

    if(strcmp(op, "+") == 0)
        printf("Addition = %d\n", a+b);

    else if(strcmp(op, "*") == 0)
        printf("Multiplication = %d\n", a*b);

    else
        printf("Invalid operator\n");

    return 0;
}
