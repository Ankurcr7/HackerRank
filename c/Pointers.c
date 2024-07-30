#include <stdio.h>

void update(int *a,int *b) {
    // Complete this function    
    int a1 = *a;
    *a+=*b;
    *b = (*b>a1)?(*b-a1):(a1- *b);
    
}

int main() {
    int a, b;
    int *pa = &a, *pb = &b;
    
    scanf("%d %d", &a, &b);
    update(pa, pb);
    printf("%d\n%d", a, b);

    return 0;
}