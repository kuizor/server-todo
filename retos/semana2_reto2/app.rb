#Created by: Miguel Brazzoduro
class App
	attr_accessor :lista, :var
	def recore_plugins
		variable = File.join("plugins/**","*.rb")
		@lista = Dir.glob(variable)
		return 0
	end
	def show
		@cont = 1
		puts "***Lista de plugins Encontrados***"
		puts ""
		@lista.each do |i|
			puts "  #{@cont}-> #{i}"
			@cont += 1
		end
		puts "**********************************"
	end
	def cargar(op)
		@cont3 = 1
		@lista.each do |i| 
			if(@cont3 == op)
				load "#{i}"
			end
			@cont3 += 1
		end
		@var = Object.constants[-2] #esto arroha la constante penultima, para obtener el nombre de la calse
		@var = Object.const_get(@var) # con esto pasamos un string a obect
		@var = @var.new				#aqui instanciamos y llamamos al obeto
		return 0
	end
end
=begin
def main
	p = 0
	app = App.new
	while (p == 0)
		app.recore_plugins
		puts "Seleccione una opcion de la lista"
		op = gets.chomp.to_i
		app.cargar(op)
		puts "\nDesea seguir? (si=0/no=1)"
		p = gets.chomp.to_i
	end
end

main
=end