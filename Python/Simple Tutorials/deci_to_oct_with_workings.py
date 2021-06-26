#17 Feb 2017
#Converts a decimal into octal and shows the workings
#Coded by _xXHunt3rXx_

#Inputs
num=int(input("Enter an integer :"))
n=num
res =""

#working - the first step
print("8 |"+str(n))
print("    "+"¯"*len(str(n)))

#Process DEC > OCT
while n!=0:
    q=n//8
    r=n%8
    res=str(r)+res
    n=q
    print("8 |"+str(n)+" - "+str(r))#working
    print("    "+"¯"*len(str(n)))#working
    
#Result
print(str(num)+" =>"+res)
