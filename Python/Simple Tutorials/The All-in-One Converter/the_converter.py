#17 Feb 2017
#An all-in-one converter for number systems(DEC, BIN, OCT, HEX)
#Coded by _xXHunt3rXx_

##------THE FUNCTIONS------##

def dec_bin(num):
    n=int(num)
    res =""
    while n!=0:
        q=n//2
        r=n%2
        res=str(r)+res
        n=q
    return (res)
def dec_oct(num):
    n=int(num)
    res =""
    while n!=0:
        q=n//8
        r=n%8
        res=str(r)+res
        n=q
    return (res)
def dec_hex(num):
    n=int(num)
    res=""
    while n!=0:
        q=n//16
        r=n%16
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
    return (res)

def bin_dec(num):
    n=list(num)
    n.reverse()
    p=tot=0
    for x in n:
        tot+=int(x)*2**p
        p+=1
    return (tot)
def oct_dec(num):
    n=list(num)
    n.reverse()
    p=tot=0
    for x in n:
        tot+=int(x)*8**p
        p+=1
    return (tot)
def hex_dec(num):
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
    n=list(num)
    n.reverse()
    p=tot=0
    for x in n:
        tot+=valoflet(x)*16**p
        p+=1
    return (tot)
##-----INSTRUCTIONS-----##
print("------------------------------INSTRUCTIONS------------------------------")
print("This program is made to convert numbers within number types. Supported bases are decimal, binary, octal and hexadecimal.")
print("Keywords for respective bases -> Decimal - DEC, Binary - BIN, Octal - OCT, Hexadecimal - HEX")
print("-----------------------------------------------------------------------------------\n")

##-----THE BODY-----##

def body():
    num=input("Enter the number :")
    intype=input("Enter the base of "+str(num)+" :")
    restype=input("Enter the desired base :")

    #Here's where the conversion paths are selected
    res="ERR"
    if intype=="DEC":
        if restype=="BIN":
            res=dec_bin(num)
        elif restype=="OCT":
            res=dec_oct(num)
        elif restype=="HEX":
            res=dec_hex(num)
        else:
            print("\nError desired base not recognized !, refer instructions.")
    elif intype=="BIN":
        if restype=="DEC":
            res=bin_dec(num)
        elif restype=="OCT":
            res=dec_oct(bin_dec(num))
        elif restype=="HEX":
            res=dec_hex(bin_dec(num))
        else:
            print("\nError desired base not recognized !, refer instructions.")
    elif intype=="OCT":
        if restype=="DEC":
            res=oct_dec(num)
        elif restype=="BIN":
            res=dec_bin(oct_dec(num))
        elif restype=="HEX":
            res=dec_hex(oct_dec(num))
        else:
            print("\nError desired base not recognized !, refer instructions.")
    elif intype=="HEX":
        if restype=="DEC":
            res=hex_dec(num)
        elif restype=="BIN":
            res=dec_bin(hex_dec(num))
        elif restype=="OCT":
            res=dec_oct(hex_dec(num))
        else:
            print("\nError desired base not recognized !, refer instructions.")
    else:
        print("\nError base of number not recognized !, refer instructions.")
    #Result
    print("\n"+str(num)+ " [ in " + intype + " ]  ===>  " + str(res)+" [ in " + restype + " ]")

getnum=True

while (getnum==True):
    body()
    cont=input("\nDo you wish to continue ?(y/n):")
    if cont=="y":
        getnum=True
    elif cont=="n":
        getnum=False
    print()


#Error handling
#The dumb,human errors where a binary like 2345, octal like 999 is entered would still give a result
#Any wrongly typed hex num would throw an error from the program e.g. OPL9
#Update 07/03/2017 - Super dumb input where special characters are included in the number would result an error.

