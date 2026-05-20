#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {

    int a = 20, b = 10;

    pid_t pid1 = fork();

    if(pid1 == 0) {

        printf("Addition = %d\n", a+b);

        return 0;
    }

    wait(NULL);

    pid_t pid2 = fork();

    if(pid2 == 0) {

        printf("Subtraction = %d\n", a-b);

        return 0;
    }

    wait(NULL);

    pid_t pid3 = fork();

    if(pid3 == 0) {

        printf("Multiplication = %d\n", a*b);

        return 0;
    }

    wait(NULL);

    return 0;
}
