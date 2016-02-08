class CaeroAutomatico
	def initialize(clave,t_cuenta,monto,ult_ci,saldo)
		@clave = clave
		@t_cuenta = t_cuenta
		@monto = monto
		@ult_ci = ult_ci
		@saldo = saldo
	end

	def compara_clave()
		#banco_clave = 9999
		if (@clave.to_i == 9999)
			#puts "Clave correcta"
			return 1
		else
			#puts "Clave Incorrecta"
			return 0
		end
	end

	def compara_cuenta()
		if (@t_cuenta == 'a' or @t_cuenta == 'A')
			#puts "Cuenta valida"
			return 1
		else
			#puts "Cuenta Invalida"
			return 0
		end
	end

	def retiro_cuenta()
		banco_monto =25000
		if (banco_monto < @monto.to_i)
			puts "Monto Insuficiente"
		else
			res = banco_monto - @monto.to_i
			#puts "Su saldo es: ", res
		end
	end

	def compara_cedula()
		#banco_cedula = '15'
		#puts "cedula", @ult_ci
		if (@ult_ci.to_i == 15)
			#puts "Cedula correcta"
			return 1
		else
			return 0
			#puts "cedula incorrecta"
		end
	end

	def saldo_cuenta()
		banco_monto = 25000
		@saldo = banco_monto
		return @saldo
	end

end



#principal
pass=0
tipo='A'
mon =0
ci = 0
sald = 0
puts "************************************\n"
puts "*   BIENVENIDO AL BANCO MIGUEL     *\n"
puts "************************************\n"
puts "\n"
puts "\n"
puts "\n"
puts "\n"
puts "Intruduzca su clave"
pass = gets.chomp
puts "\n"
puts "\n"
puts "\n"
puts "\n"
puts "Seleccione el tipo de Operacion\n"
puts "    RETIRO (R)   /   CONSULTA (C)\n"
ope = gets.chomp
puts "\n"
puts "\n"
puts "\n"
puts "\n"
puts "Seleccione su tipo de cuenta\n"
puts "    AHORRO (A)   /   CORRIENTE (C)\n"
tipo = gets.chomp
if (ope == 'R' or ope == 'r')
	puts "\n"
	puts "\n"
	puts "\n"
	puts "\n"
	puts "              Seleccione Monto\n"
	puts "-   *100 / *200 / *300 / *400 / *500 / *600    -\n"
	puts "              *****************        \n"
	mon = gets.chomp
	puts "\n"
	puts "\n"
	puts "\n"
	puts "\n"
	puts "Introduzca los dos ultimos Numeros de su Cedula de Identidad\n"
	ci = gets.chomp
	pass.to_i
	mon.to_i
	ci.to_i
	Sbanco = CaeroAutomatico.new(pass,tipo,mon,ci,sald)
	if (Sbanco.compara_clave() == 0)
		puts "Clave incorrecta!!"
		puts "\n \n ¡¡¡¡¡Hasta luego!!!"
	else
		if (Sbanco.compara_cuenta() == 0)
			puts "Su Tipo de Cuenta es invalida"
			puts "\n \n ¡¡¡¡¡Hasta luego!!!"
		else
			if (Sbanco.compara_cedula() == 0)
				puts "Su Cedula de Identidad es invalida!!"
				puts "\n \n ¡¡¡¡¡Hasta luego!!!"
			else
				puts "\n \n \nSu saldo es: ", Sbanco.retiro_cuenta()
				puts "\n \n ¡¡¡¡¡Hasta luego!!!"
			end
		end
	end
else
	Sbanco = CaeroAutomatico.new(pass,tipo,mon,ci,sald)
	puts "\n"
	puts "\n"
	puts "\n"
	puts "\n"
	if (Sbanco.compara_clave() == 0)
		puts "Clave incorrecta"
		puts "\n \n ¡¡¡¡¡Hasta luego!!!"
	else
		if (Sbanco.compara_cuenta() == 0)
			puts "Su Tipo de Cuenta es invalida"
			puts "\n \n ¡¡¡¡¡Hasta luego!!!"
		else
			puts "Su saldo es: ", Sbanco.saldo_cuenta()
		end
	end
end
