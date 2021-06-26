#17 Feb 2017
#Converts a octal into a hexadecimal and shows the workings
#Coded by _xXHunt3rXx_

#letter-to-value converter(per hexadecimal notation)
def valoflet(let):
    if let=="A":
        return 10
    elif let=="B":
        return 11
    elif let=="C":
        return 12
    elif let=="D":
        return 13
    elif let=="E":
        return 14
    elif let=="F":
        return 15
    else:
        return int(let)    

#inputs
num=input("Enter a hexadecimal number:")
n=list(num)
n.reverse()
p=tot=0
res=[]

print()#working

#process HEXA>DEC
for x in n:
    res.append(valoflet(x)*16**p)
    print("16 ^ "+str(p)+" x "+x+":"+str(valoflet(x))+" = "+str(valoflet(x)*16**p))#working
    p+=1
for x in res:
    tot+=int(x)

#result
print("Addition = ",tot)#working
print("\n"+str(num),"=>",tot)
