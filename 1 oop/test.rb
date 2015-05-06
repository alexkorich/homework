require_relative "start"

auth1 = Author.new("tim","bio1")
auth2 = Author.new("kim","bio2")
auth3 = Author.new("ali","bio3")
auth4 = Author.new("ben","bio4")

book1 = Book.new("Book1", auth1)
book2 = Book.new("book2", auth2)
book3 = Book.new("book3", auth3)
book4 = Book.new("book4", auth4)


lib = Library.new("NewLib")
lib.add_book(book1)
lib.add_book(book2)
lib.add_book(book3)
lib.add_book(book4)
puts lib.authors