#17 Feb 2017
#Converts a octal into a decimal
#Coded by _xXHunt3rXx_

def oct_dec(num):
    n=list(num)
    n.reverse()
    p=tot=0
    for x in n:
        tot+=int(x)*8**p
        p+=1
    return (tot)
