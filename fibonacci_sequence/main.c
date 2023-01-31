#include <stdio.h>
#include <stdlib.h>
extern int fibo(int);
int main(int argc, char **argv){
    if(argc!=2){
        printf("uso file: %s <n>\n",argv[0]);
        return 1;
    }
    int n = atoi(argv[1]);
    printf("fibo(%d) = %d\n",n,fibo(n));
    return 0;
}