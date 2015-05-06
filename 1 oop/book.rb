class Book
	attr_reader :title, :author
	def initialize(title, author)
		@title=title
		@author=author
		@count=0
		@taken_by=nil
	end
	
	def count(c)              
		@count=c
	end

	private
	def title(title)
		@title=title
	end

	def author(author)
		@author=author
	end
	def to_s
		"Title: #{self.title.to_s}, author: #{self.author.to_s}, taken by:  #{self.taken_by.to_s}"
	end
end