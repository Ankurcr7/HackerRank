n,m=map(int,input().split())
arr=list(map(int,input().split()))
a=list(map(int,input().split()))
b=list(map(int,input().split()))

sta=set(a)
stb=set(b)
c=0
for i in arr:
    if i in sta:
        c+=1
    elif i in stb:
        c-=1

print(c)