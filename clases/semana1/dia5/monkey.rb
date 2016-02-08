class Monkey
	@@arms = 2 #brazo
	@@legs = 2 #piernas

	def self.have_trump?	#tiene pulgar?
		true
	end

	def pooping #pupu
		puts "I'm pooping"
	end

	def peeing #pipi
		puts "I'm peeing"
	end

	private
	def evolve 	#evolucion
		puts "I'm evolving!"
	end
end