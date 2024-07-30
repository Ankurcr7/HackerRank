n,m=map(int,input().split())
y=int((n/2))
i=0
while y > 0:
    print("-"*3*y+".|."*2*i+".|."+"-"*3*y)
    y-=1
    i+=1
print("WELCOME".center(m,"-"))
j=int((n/2))-1
i=1
while j>=0:
    print("-"*3*i+".|."*2*j+".|."+"-"*3*i)
    i+=1
    j-=1