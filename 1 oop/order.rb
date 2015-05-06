class Order
	attr_reader :book, :reader, :date
	def initialize(book, reader)
		@book=book
		@reader=reader
		@date=Time.now
	end
	def book(book)
		@book=book
	end
	
	def to_s
		"#{self.book.to_s}, #{self.reader.to_s}, #{self.date.to_s}"
	end
end			