#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int counter = 0;

int main() {

    for(int i=0; i<5; i++) {

        if(fork() == 0) {

            for(int j=0; j<5; j++) {

                int temp = counter;

                temp++;

                sleep(1);

                counter = temp;

                printf("Child %d Counter = %d\n", getpid(), counter);
            }

            return 0;
        }
    }

    while(wait(NULL) > 0);

    return 0;
}
