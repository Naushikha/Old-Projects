#17 Feb 2017
#Converts a hexadecimal into a decimal
#Coded by _xXHunt3rXx_

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
