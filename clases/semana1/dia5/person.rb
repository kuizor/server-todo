require_relative "monkey"

class Person < Monkey


	def initialize(name,last_name)
		@name = name
		@last_name = last_name
	end

	def name 	#getter
		@name
	end

	def name(name)
		@name = name
	end

	def full_name
		puts "Name: #{@name} y el Last_name: #{@last_name}"
		#[@name, @last_name].hoin(" ")
		#@name + " " + @last_name
	end

	def talk
		reasoning
		@name
	end

	def reasoning
		puts "Í'm Raasoning!!"
	end

	private
	def evolving
		evolve
	end

	def self.age(birthday)

	end
end

persona = Person.new("pepe","Agg")

persona.full_name
persona.talk
persona.evolving