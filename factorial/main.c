#include <stdio.h>
#include <stdlib.h>

extern int fact(int);
int main(int argc, char **argv){
    if(argc != 2){
        printf("%s : n\n",argv[0]);
        return 1;
    }
    int n = atoi(argv[1]);
    int fn = fact(n);
    printf("fact(%d): %d\n",n,fn);
    return 0;
}