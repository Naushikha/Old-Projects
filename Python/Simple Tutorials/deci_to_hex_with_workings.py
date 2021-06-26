#17 Feb 2017
#Converts a decimal into hexadecimal
#Coded by  _xXHun3rXx_

#inputs
num=int(input("Enter an integer :"))
n=num
res=""

#draw - the first step
print("16 |"+str(n))
print("      "+"¯"*len(str(n)))

#process DEC>HEX
while n!=0:
    q=n//16
    r=n%16
    #select letters
    if r==10:
        r="A"
    elif r==11:
        r="B"
    elif r==12:
        r="C"
    elif r==13:
        r="D"
    elif r==14:
        r="E"
    elif r==15:
        r="F"
    else:
        r=str(r)
    n=q
    res = r + res
    print("16 |"+str(n)+" - "+r)#working
    print("      "+"¯"*len(str(n)))#working
    
#result
print(num,"=>",res)
