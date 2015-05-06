require_relative 'author'
require_relative 'order'
require_relative 'reader'
require_relative 'book'

class Library
	def initialize(name)
		@name=name
		@readers=Array.new
	end
	attr_accessor :books, :orders, :readers, :authors, :name
	
	

	def add_reader(reader)
		if reader.class==Reader
			@readers<<reader
		else 
		end
	end

	def add_order(order)
		if order.class==Orders
		orders<<order
		else raise "New reader must be a Reader class!"
		end
	end

	def add_book(book)
		if book.class==Book
		books<<book
		authors<<book.author
		else raise "New reader must be a Reader class!"
		end
	end

	def get_book(book, reader)
		if self.search_b(book)
			if self.search_r(reader)
			book.count+=1
			reader.books_taken<<book
			reader.has_books<<book
			else  puts "No such book!"
			end
		end
	end

	def self.most_popular
		self.books.sort {|b1, b2| b2[counts] <=> b1[counts] }
	end

	def self.most_popular_one
		self.most_popular.first
	end

	def self.most_often_taker()
		self.readers.sort {|r1, r2| b2[books_taken].length <=> b1[books_taken].length}.first
	end


	def how_many_ordered
		self.readers do |r|
			if (r.books_taken && self.most_popular).length>0
			how_many+=r
			how_many.length
			end
		end
	end

	# def save_to_file(filename)
	# 	f = File.new("#{filename}.libfile",  "w+")
		
	# end

	# def self.get_from_file(filename)
	# 	f = File.new(filename, "r")
	# 	a=f.readlines("\n")
	# 	if a.first=="This is libfile!" && a.last="--EndLib--"
	# 	puts "luil"
	# 	else puts("Wrong libfile!")
	# 	end
	# end
end