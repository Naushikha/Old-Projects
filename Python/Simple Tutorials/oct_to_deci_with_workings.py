#17 Feb 2017
#Converts a octal into a decimal and shows the workings
#Coded by _xXHunt3rXx_

#inputs
num=input("Enter an octal number:")
n=list(num)
n.reverse()
p=tot=0
res=[]

print()#working

#process OCT>DEC
for x in n:
    res.append(int(x)*8**p)
    print("8 ^ "+str(p)+" x "+x+" = "+str(int(x)*8**p))#working
    p+=1
for x in res:
    tot+=int(x)

#result
print("Addition = ",tot)#working
print("\n"+str(num),"=>",tot)
