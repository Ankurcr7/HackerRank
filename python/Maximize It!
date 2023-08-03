import itertools
k,m=map(int,input().split())
lists=[]
l=[]
for i in range(k):
    lists+=[[int(x)**2 for x in input().split()[1:]]]
for j in itertools.product(*lists):
    l.append(sum(j)%m)
print(max(l))