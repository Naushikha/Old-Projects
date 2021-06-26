#17 Feb 2017
#Converts a binary into a decimal
#Coded by _xXHunt3rXx_

def bin_dec(num):
    n=list(num)
    n.reverse()
    p=tot=0
    for x in n:
        tot+=int(x)*2**p
        p+=1
    return (tot)
