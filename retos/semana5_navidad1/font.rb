class Font
	def initialize(fonts)
		@id = fonts["id"]
		@titulo = fonts["title"]
	end
	attr_accessor :id, :titulo
end