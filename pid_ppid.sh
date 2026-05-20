#include <stdio.h>
#include <unistd.h>
#include <signal.h>

int main() {

    while(1) {

        printf("Process ID (PID): %d\n", getpid());

        printf("Parent Process ID (PPID): %d\n", getppid());

        printf("-------------------------\n");

        sleep(3);
    }

    return 0;
}
