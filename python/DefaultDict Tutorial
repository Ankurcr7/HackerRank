# Enter your code here. Read input from STDIN. Print output to STDOUT
from collections import defaultdict

n,m = list(map(int, input().split(" ")))
d = defaultdict(list)
for i in range(1,n+1):
    a = input()
    d[a].append(i)
    
for i in range(m):
    x = input()
    if x in d:
        print(*d[x], sep= " ")
    else:
        print(-1)