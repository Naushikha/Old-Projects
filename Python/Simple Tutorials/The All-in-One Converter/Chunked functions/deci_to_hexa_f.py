#17 Feb 2017
#Converts a decimal into hexadecimal
#Coded by  _xXHun3rXx_

def dec_hexa():
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

