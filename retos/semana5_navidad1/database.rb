require_relative 'object_pdf'
require_relative 'object_png'
class DataBase									#Clase para guardar los datos en una Base de Datos
	def initialize
		@pdfs = []
		@pngs = []
	end
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
	def guardar_png(render)						#serializa el objeto en el archivo PNGs
		@render = render
		begin
			@pngs << ObjectPdf.new(@pngs)
			File.open('pngs','w+') do |f|
				Marshal.dump(@render,f)
			end
			puts "Guardo satisfactoriamente en la Base de Datos..."
			sleep(1)
		rescue Exception => e
			puts "Error 014->("+e.message+")"
		end
	end
end


