#17 Feb 2017
#Reads in a simple database
#Coded by _xXHunt3rXx_

#for fun, made 2 functions that imitate the behaviour of min and max(from scratch)
def f_max(lst):
    mx=int(lst[0])
    for x in lst:
        if int(x)>mx:
            mx=int(x)
    return mx
def f_min(lst):
    mn=int(lst[0])
    for x in lst:
        if int(x)<mn:
            mn=int(x)
    return mn

f1=open('data.txt','r')
data=f1.readlines()

tot=avg=0

for x in data:
    tot+=int(x)
avg=tot/len(data)
maxn=f_max(data)
minn=f_min(data)

print("Total is",tot)
print("Average is",avg)
print("Maximum is",maxn)
print("Minimum is",minn)
