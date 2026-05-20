#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]) {

    if(argc != 2) {
        printf("Usage: ./a.out string\n");
        return 1;
    }

    char *str = argv[1];

    int len = strlen(str);

    printf("Reversed String: ");

    for(int i=len-1; i>=0; i--) {
        printf("%c", str[i]);
    }

    printf("\n");

    return 0;
}
