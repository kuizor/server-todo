class ObjectPdf
	def initialize(array)
			#parametros
		@fecha=array[0]
		@hora=array[1]	
		@handwriting_id=array[2]
		@handwriting_size=array[3]
		@handwriting_color=array[4]
		@text=array[5]
		@width=array[6]
		@height=array[7]
		@min_padding=array[8]								
		@line_spacing=array[9] 								
		@line_spacing_variance=array[10] 					
		@word_spacing_variance=array[11] 					
		@random_seed=array[12]			 					
	end
	attr_accessor :handwriting_id, :handwriting_size, :handwriting_color, 
	:text, :width, :height, :min_padding, :line_spacing, :line_spacing_variance,
	:word_spacing_variance, :random_seed, :fecha, :hora
end