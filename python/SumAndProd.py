import numpy

n,m=map(int,input().split())
a=[]
for i in range(n):
    l=list(map(int,input().split()))
    if len(l)==m:
        a.append(l)
    else:
        pass
p=numpy.sum(a,axis=0)
print(numpy.prod(p))