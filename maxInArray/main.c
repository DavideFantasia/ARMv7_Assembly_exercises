#include <stdio.h>
#include <stdlib.h>
extern int max(int *, int);
int main(int argc, char **argv){

	if(argc<2)	return 1;
	int *arr = malloc((argc-1) * sizeof(int));
	for(int i=0; i<argc-1; i++){
		arr[i] = atoi(argv[i+1]);
	}
	int maxEl = max(arr, argc-1);
	return 0;

}
