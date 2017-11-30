#include <stdio.h>
#include <stdlib.h>

void dblit(int*, int);

int main()
{
    int len = 8;
    int* arr = (int*) malloc(len * sizeof(int));
	int i;
	for(i = 1; i <= len; i++){
		arr[i-1] = i;
	}
    
    dblit(arr, len);
	
	FILE* fout = fopen("output.txt", "w");
	
	for(i = 0; i < len; i++){
		fprintf(fout, "%d\t", arr[i]);
	}
	fputs("\n\nfunction ran, space allocated", fout);
}