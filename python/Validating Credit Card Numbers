n=int(input())
for x in range(n):
    c=0
    a=input()
    for i in a:
        if i.isdigit():
            c+=1
        elif i.isalpha():
            break
    if c==16:
        
        if int(a[0])==4 or int(a[0])==5 or int(a[0])==6:
            for i in a:
                if i.isdigit():
                    if int(i)<0:
                        break
            u=0
            for y in range(len(a)):
                if a[y]=="-":
                    u+=1
            
           
            if u==3:
                if a[4]=="-" and a[9]=="-" and a[14]=="-":
                    a1=list(a)
                    po=a1.pop(4)
                    poo=a1.pop(9-1)
                    pooo=a1.pop(14-2)
                    a2=''.join(a1)
                    d=0
                    
                    for w in range(1,len(a2)):
                        if a2[w]==a2[w-1]:
                            d+=1
                        else:
                            pass
                    
                    if d>=3:
                        
                        print("Invalid")
                    else:
                        print("Valid")
                else:
                    print("Invalid")
            elif u==0:
                d=0
                for w in range(1,len(a)):
                    if a[w]==a[w-1]:
                        d+=1
                    else:
                        d=0
            
                if d>=3:
                    print("Invalid")
                else:
                    print("Valid")
                    
            elif u>=3:
                print("Invalid")
        else:
            print("Invalid")
        
    else:
        print("Invalid")