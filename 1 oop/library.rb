require_relative 'author'
require_relative 'order'
require_relative 'reader'
require_relative 'book'
require 'json'

class Library
	attr_reader :books, :orders, :readers, :authors, :name
 
 def initialize(name)
		@name    =name
		@books   =Array.new
		@orders  =Array.new
		@readers =Array.new
		@authors =Array.new
	end	

	def add_reader(reader)
		if reader.class==Reader
			@readers<<reader
		else raise "New reader must be a Reader class!"
		end
	end

	def add_order(order)
		if order.class==Orders
		orders<<order
		else raise "New order must be a Reader class!"
		end
	end

	def add_book(book)
		if book.class==Book
		books<<book
		authors<<book.author
		else raise "New reader must be a Reader class!"
		end
	end


	def most_frequent (array, property)
		hash=Hash.new(0)
		array.each {|item| hash[item.send(property.to_sym)] += 1}
		hash.max_by{|k,v| v}[0]
	end

	def self.most_often_taker()
		most_frequent(self.orders, reader)
	end

	def self.most_popular_book
		most_frequent(self.orders, book)
	end

	# def self.how_many_most_3
	# 	hash=Hash.new(0)
	# 	self.orders.each {|order| hash[order.book] += 1}
	# 	hash.sort_by()
	# end



	# def how_many_ordered
	# 	self.readers do |r|
	# 		if (r.books_taken && self.most_popular).length>0
	# 		how_many+=r
	# 		how_many.length
	# 		end
	# 	end
	# end

	# def save_to_file(filename)
	# 	f = File.new("#{filename}.libfile",  "w+")
	# 	self.
		
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