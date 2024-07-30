#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {
    int size;
    scanf("%d",&size);
    int arr[size];
    for (int i=0; i<size; i++){
        int val;
        scanf("%d",&val);
        arr[i]=val;

    }
    int sum =0;
    for (int j = 1;j<size; j++){
        sum = arr[0]+=arr[j];
    }
    printf("%d",sum);
    return 0;
}