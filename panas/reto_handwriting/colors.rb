class Colors
	def png_colors(index)
		code=['#000000','#FF0000','#00FF00','#0000FF','FFFF00']
		code[index-1]
	end

	def pdf_colors(index)
		code=['(0,0,0,1)','(0,1,1,0)','(1,0,1,0)','(1,1,0,0)','(0,0,1,0)']
		code[index-1]
	end
end

