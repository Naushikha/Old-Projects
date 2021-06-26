import zipfile
from threading import Thread
def extractFile(zFile, password):
    try:
        print '[*] Checking key "' + password + '"...'
        zFile.extractall(pwd=password)
        print '[+] Password found !'
    except:
        self.__stop = True
def main():
    zFile = zipfile.ZipFile('test.zip')
    passFile=open('dictionary.txt')
    for line in passFile.readlines():
        password = line.strip('\n')
        t=Thread(target=extractFile,args=(zFile, password))
        t.start()

if __name__ == '__main__':
    main()
