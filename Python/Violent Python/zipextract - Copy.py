import zipfile
def main():
    zFile = zipfile.ZipFile('tes.zip')
    zFile.setpassword(b'test')
if __name__ == '__main__':
    main()
