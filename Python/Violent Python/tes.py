import socket
socket.setdefaulttimeout(2)
s = socket.socket()
try:
    s.connect(("192.168.1.6",443))
except Exception,e:
    print "[-]Error - " + str(e)
ans = s.recv(1024)
print ans
