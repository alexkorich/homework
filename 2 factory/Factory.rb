class Factory
def initialize(name, *args)
	name=Class.new
	args.each do |arg|
		define
	end


end