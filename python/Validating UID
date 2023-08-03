# Enter your code here. Read input from STDIN. Print output to STDOUT
t=int(input())
for i in range(t):
    a=input()
    if len(a)==10:
        u=0
        d=0
        c=0
        if a.isalnum():
            for x in a:
                if x.isupper():
                    u+=1
                elif x.isdigit():
                    d+=1
                else:
                    pass
            for y in range(len(a)):
                if a.count(a[y])>=2:
                    c+=1
                else:
                    pass
        #print(u,d,c)
        if u>=2 and d>=3 and c==0:
            print("Valid")
        else:
            print("Invalid")
    else:
        print("Invalid")