slmgr /xpr
pause
netsh interface ip set address name=Ethernet static 192.168.1.53 255.255.255.0 192.168.1.1
netsh interface ip set dns name=Ethernet static 192.168.1.1
netsh interface ip add dns name=Ethernet 192.168.1.1 index=2
WMIC computersystem where caption=%computername% rename TL-T-HUNT3R
shutdown /r /t 0