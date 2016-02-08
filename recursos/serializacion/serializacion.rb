#Serializacion de archivos

def guardar_pdf(render)						#serializa el objeto en el archivo pdfs
	@render = render
	begin
		@pdfs << ObjectPdf.new(@pngs)
		File.open('pdfs','w+') do |f|
			Marshal.dump(@render,f)				#Se le pasa el Render porque es lo que se requiere guardar
		end
	puts "Guardo satisfactoriamente en la Base de Datos..."
	sleep(1)
	rescue Exception => e
		puts "Error 013->("+e.message+")"
	end					
end	