require_relative "start"

a = Reader.new("Tim","343@gmail.com", "no")
puts a.name
lib = Library.new("NewLib")
lib.add_reader(a)
