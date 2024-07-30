#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main()
{
	int a, b , sum, dif;
    float c, d, sumf, diff;
    
    scanf("%d%d", &a, &b);
    scanf("%f%f", &c, &d);
    
    sum=a+b;
    dif=a-b;
    sumf=c+d;
    diff=c-d;
    
    printf("%d %d\n%1.1f %1.1f", sum, dif, sumf, diff);
    
    return 0;
}