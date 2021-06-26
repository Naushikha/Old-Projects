#17 Feb 2017
#Converts a binary into a decimal and shows the workings
#Coded by _xXHunt3rXx_

#inputs
num=input("Enter a binary number:")
n=list(num)
n.reverse()
p=tot=0
res=[]

print()#working

#process BIN>DEC
for x in n:
    res.append(int(x)*2**p)
    print("2 ^ "+str(p)+" x "+x+" = "+str(int(x)*2**p))#working
    p+=1
for x in res:
    tot+=int(x)

#result
print("Addition = ",tot)#working
print("\n"+str(num),"=>",tot)
