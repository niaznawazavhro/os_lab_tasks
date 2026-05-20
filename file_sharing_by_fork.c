#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {

    FILE *fp = fopen("data.txt", "w+");

    pid_t pid = fork();

    if(pid == 0) {

        fprintf(fp, "Hello from child process\n");

        fclose(fp);

    } else {

        wait(NULL);

        char buffer[100];

        rewind(fp);

        fgets(buffer, sizeof(buffer), fp);

        printf("Parent Read: %s", buffer);

        fclose(fp);
    }

    return 0;
}
