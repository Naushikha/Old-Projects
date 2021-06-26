#17 Feb 2017
#Converts a decimal into binary
#Coded by _xXHunt3rXx_

def dec_bin(n):
    res =""
    while n!=0:
        q=n//2
        r=n%2
        res=str(r)+res
        n=q
    return (res)
    

