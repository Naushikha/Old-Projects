#17 Feb 2017
#Converts a binary into a decimal
#Coded by _xXHunt3rXx_

#Inputs
num=input("Enter a binary number:")
n=list(num)
n.reverse()
p=tot=0
res=[]

#Process BIN>DEC
for x in n:
    res.append(int(x)*2**p)
    p+=1
for x in res:
    tot+=int(x)

#Result
print(tot)
