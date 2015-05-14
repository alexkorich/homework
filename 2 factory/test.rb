require_relative 'factory'
Person = Factory.new(:name, :adress, :phone) do
	def hello()
	puts "hello, #{@name} "
	end
end

tim=Person.new("tim", "NY", "343434")
tim.hello
