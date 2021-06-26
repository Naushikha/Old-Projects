#17 Feb 2017
#Converts a octal into a decimal
#Coded by _xXHunt3rXx_

#inputs
num=input("Enter an octal number:")
n=list(num)
n.reverse()
p=tot=0
res=[]

#process OCT>DEC
for x in n:
    res.append(int(x)*8**p)
    p+=1
for x in res:
    tot+=int(x)

#result
print(tot)
