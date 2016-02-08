class Pelicula
	attr_accessor :titulo, :year, :type, :id 
	def initialize(movie)
		@titulo = movie['Title']
		@year = movie['Year']
		@type = movie['Type']
		@id = movie['imdbID']
	end
end

