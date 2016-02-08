require_relative "circo_animales"
require_relative "circo_carpa"
require_relative "circo_persona"
require_relative "circo_persona_payaso"

class Circo < Carpa
	attr_accessor :cant, :person, :animal
	@acum = 0
	def initialize
		@animal = Array.new
		@person = Array.new
		@capacidad = Array.new
	end

	def show_cant_person
		if (@person.size != 0)
			@person.select{|i| i.person}.count
		else
			'La matriz esta vacia'
		end
	end

	def show_cant_animal
		if (@animal.size != 0)
			@animal.select{|i| i.animal}.count
		else
			'La matriz esta vacia'
		end
	end

	def add_cant(cant)
		if(@acum.to_i + cant > 1000)
			puts "Capacidad en la Carpa excedida!!
			Actualmente se encuentran #{@acum} Personas en la Carpa."
		else
			@acum = @acum.to_i + cant.to_i
			agregar_publico(Carpa.new(cant))
		end
	end

	def add_public(circo_carpa)
		@capacidad.push(circo_carpa)
	end

	def add_person(circo_persona)
		@person.push(circo_persona)
	end

	def add_animal(circo_animales)
		@person.push(circo_animales)
	end
end