#include <stdio.h>
#include <ctype.h>

int main(int argc, char *argv[]) {

    if(argc != 2) {
        printf("Usage: ./a.out string\n");
        return 1;
    }

    int vowels = 0, consonants = 0;

    char *str = argv[1];

    for(int i=0; str[i] != '\0'; i++) {

        char ch = tolower(str[i]);

        if(isalpha(ch)) {

            if(ch=='a' || ch=='e' || ch=='i' || ch=='o' || ch=='u')
                vowels++;
            else
                consonants++;
        }
    }

    printf("Vowels = %d\n", vowels);

    printf("Consonants = %d\n", consonants);

    return 0;
}
