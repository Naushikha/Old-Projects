f1=open('data.txt','r')
x=f1.readlines()
print(x)
tot=0
for y in x:
    tot+=int(y)
print(tot)
