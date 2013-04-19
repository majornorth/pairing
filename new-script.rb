class Shop
	attr_accessor :name
	def initialize(param)
		@name=param
	end

	def change
		@name.reverse!
	end

end

@shop = Shop.new("jerkey")