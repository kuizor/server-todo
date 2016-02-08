while !validar(@tipo)							#llamado
	@tipo = gets.chomp.to_i
end


def validar(op)									#validar opciones ingresadas
	puts "llego: ",op
	if (op == 1 || op == 2)
		return true
	else
		puts "Opcion invalida (1 o 2)"
		return false
	end
end