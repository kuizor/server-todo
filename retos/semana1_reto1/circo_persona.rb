require_relative "circo_persona_payaso"
class Persona
	#attr_accessor :persona

	def initialize(persona)
		@persona = Array.new
	end

	def agregar_payaso(circo_persona_payaso)
		@persona.push(circo_persona_payaso)
	end
end