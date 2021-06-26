#import isbnlib

isbn = '9788177581805'

book = isbnlib.meta(isbn)

title = book['Title']
authors = book['Authors']

print (book)

