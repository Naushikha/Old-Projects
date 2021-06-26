#17 Feb 2017
#Converts a decimal into binary and shows the workings
#Coded by _xXHunt3rXx_

#Inputs
num=int(input("Enter an integer :"))
n=num
res =""

#working - the first step
print("2 |"+str(n))
print("    "+"¯"*len(str(n)))

#Process DEC > BIN
while n!=0:
    q=n//2
    r=n%2
    res=str(r)+res
    n=q
    print("2 |"+str(n)+" - "+str(r))#working
    print("    "+"¯"*len(str(n)))#working
    
#Result
print(str(num)+" =>"+res)
