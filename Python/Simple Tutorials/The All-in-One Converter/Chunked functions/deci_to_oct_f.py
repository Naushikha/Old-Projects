#17 Feb 2017
#Converts a decimal into octal
#Coded by _xXHunt3rXx_

def dec_oct(n)
    res =""
    while n!=0:
        q=n//8
        r=n%8
        res=str(r)+res
        n=q
    return (res)

