isbnList =[]

import isbnlib

#read from input file
isbnFile  = open("isbn.txt","r")
for line in isbnFile:
    isbnList.append(line.strip())
isbnFile.close
#get data from isbntools
bookName=[]
tmpAuthor=[]
bookAuthor=[]
for elem in isbnList:
    #try:
        book = isbnlib.meta(elem)#,service='' 
        #check if it found the data
        bookName.append(book['Title'])
        tmpAuthor=book['Authors']
        tmpString=""
        for author in tmpAuthor:
            tmpString =tmpString + " / " + author
        bookAuthor.append(tmpString)
    #except:
   #      bookName.append("NOT FOUND" )
   #      bookAuthor.append("NOT FOUND")

#prepare for output
C=0
masterString =""  #might exceed limitations :v
for elem in isbnList:
    tmpString = elem + "," + bookName[C] + "," + bookAuthor[C]
    masterString=masterString +tmpString +"\n"
    C=C+1
#output to csv
print(masterString)
dataFile = open("LibraryBooks.csv","w")
dataFile.write(masterString)
dataFile.close()


#{'ISBN-13': '9788177581805', 'Title': 'Vogels Textbook Of Quantitative Chemical Analysis', 'Authors': ['Mendham'], 'Publisher': 'Pearson Education India', 'Year': '2006', 'Language': 'en'}
