# make class
# make six methods
# make two each a string, a hash, array

# call a method in IRB after I load this script that adds "etsy" to my friends

require "nokogiri"
require "open-uri"

# doc = Nokogiri::HTML(open("http://www.crunchbase.com/company/etsy"))
# doc.css("#container")
# doc.css("#container").count
# doc.css("#container").css("#col2_internal")
# doc.css("#container").css("#col2_internal").count
# doc.css("#container").css("#col2_internal").css(".h1_first")
# doc.css("#container").css("#col2_internal").css(".h1_first").children
# doc.css("#container").css("#col2_internal").css(".h1_first").first
# doc.css("#container").css("#col2_internal").css(".h1_first").count
# doc.css("#container").css("#col2_internal").css(".h1_first").inner_text
# 


class Person
	attr_accessor :name, :age, :friends, :people #tells how to access an instantiation of the class by using a symbol called 'name'
	def initialize(param)
		@name = param
		@friends = ["Jim","John","Jane"]
		@age = 29
		@people = {}
	end

	#String
	def hello
		p self.name
	end

	def goodbye(funeral)
		p self.name << " " << funeral
	end


	#Array
	def playdates(ninny) 
		@friends << ninny
	end

	#Hash
	def knownPeople(arg1,arg2)
		@people[arg1.to_sym] = arg2
		@people
	end
end

@person = Person.new("John Davison")
@person.hello


