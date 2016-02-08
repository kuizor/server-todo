
#======================================================recorrer una carpeta
def dir
	Dir.foreach("plugins") {|x| puts x}
		#puts dir.pwd
end
def listar
	Dir.foreach("plugins") do |x| 
		@lista.push(x)
		#puts x
	end
	puts @lista
end
#======================================================Busca todos los archivos de una extension unica y los mete en un array
def dir2
	variable = File.join("**","*.rb")
	Dir.glob(variable)
end
