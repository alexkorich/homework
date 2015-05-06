require_relative "start"

auth1 = Author.new("tim","bio1")
auth2 = Author.new("kim","bio2")
auth3 = Author.new("ali","bio3")
auth4 = Author.new("ben","bio4")

book1 = Book.new("Book1", auth1)
book2 = Book.new("book2", auth2)
book3 = Book.new("book3", auth3)
book4 = Book.new("book4", auth4)

user1 =Reader.new("Al", "as@23.com", "dp")
user2 =Reader.new("Zeit", "as@23.com", "dp")
user3 =Reader.new("Schmerz", "as@23.com", "dp")
user4 =Reader.new("Tod", "as@23.com", "dp")
user5 =Reader.new("Gott", "as@23.com", "dp")


lib = Library.new("NewLib")
lib.add_book(book1)
lib.add_book(book2)
lib.add_book(book3)
lib.add_book(book4)

lib.add_reader(user1)
lib.add_reader(user2)
lib.add_reader(user3)
lib.add_reader(user4)
lib.add_reader(user5)


lib.add_order(Order.new(book1, user1))
lib.add_order(Order.new(book2, user2))
lib.add_order(Order.new(book3, user3))
lib.add_order(Order.new(book1, user4))
lib.add_order(Order.new(book2, user5))
lib.add_order(Order.new(book3, user1))
lib.add_order(Order.new(book3, user1))

puts lib.most_often_taker
puts lib.most_popular_book