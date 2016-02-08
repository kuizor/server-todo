class Cliente
	
	def initialize(clave,ci,monto,tipo,saldo)
		@clave = clave
		@ci = ci
		@monto = monto
		@tipo = tipo
		@saldo = saldo
	end
	attr_accessor :clave, :ci, :monto, :tipo, :saldo

	def consultar_saldo()
		#puts "el saldo es: ",@saldo
		return @saldo
	end

	def retiro()
		if (@monto > @saldo)
			puts "Saldo Insuficiente..."
		else
			@saldo = @saldo - @monto
			#puts "Su saldo es: ",@saldo
		end
		return @saldo
	end

	def validacion()
		@_clave = 5555
		@_ci = 12
		@_tipo = 'a'
		if(@_clave == @clave.to_i)
			#puts "\n Clave valida"
			return 1
		else
			#puts "\n Clave Invalida"
			return 0
		end
		if(@_ci == @ci.to_i)
			#puts "\n Cedula valida"
			return 1
		else
			#puts "\n Cedula Invalida"
			return 0
		end
		if(@_tipo == @tipo)
			#puts "\n Cuenta valida"
			return 1
		else
			#puts "\n Cuenta Invalida"
			return 0
		end
	end
end

class Idioma
	def initialize(id)
		@id = id
	end
	attr_accessor :id

	def Clave()
		if (@id == 'es')
			puts "\n Inserte su clave..."
		else
			puts "\n Insert your password..."
		end
	end
	def tipo_cuenta()
		#tipo_mesage = "Seleccione su tipo de cuenta..." 
		if (@id == 'es')
			puts "\n Seleccione su Tipo de cuenta..."
			puts "\nAHORRO (A - a) CORRIENTE (C - c)"
			#return mensage
		else
			puts "\n Select your account type..."
			puts "\nAHORRO (A - a) CORRIENTE (C - c)"
		end
	end

	def tipo_operacion()
		if (@id == 'es')
			puts "\n Seleccione el tipo de Operacion... RETIRO (R) / CONSULTA (C)"
		else
			puts "\n Select type of operation... RETIREMENT (R) / CONSULT (C)"
		end
	end

	def idioma_monto()
		if (@id == 'es')
			puts "\n Seleccione el monto..."
		else
			puts "\n Select the amount..."
		end
		puts "-100 / -200 / -300 / -400 / -500 / -600"
	end

	def idioma_cedula()
		if (@id == 'es')
			puts "\n Intruduzca los ultimos 2 numeros de su cedula.."
		else
			puts "\n Enter the last 2 digits of your ID"
		end
	end

	def idioma_mss_error()
		#@error1 = ["CLAVE ERROR","ERROR DE CUENTA","ERROR DE CEDULA"]
		#@error2 = ["PASSWORD ERROR","ACCOUNT ERROR","ID ERROR"]
		@error1 = "Datos errados...!!"
		@error2 = "Erroneous data...!!"
		if (@id == 'es')
			return @error1
		else
			return @error2
		end
	end

end

def setup #Siguiente reto para agregar taretas (TDC TDD)
	@clientes = []

	account1 = Account.new(datos)
	tdc1 = Tdc.new(datos)

	client1 = Client.new(datos)
	client1.account = account1
	client1.tdc = tdc1

	@clients.push client1

	@clients
end


class Principal
	def caero
		op = 1
		pass = 0
		ced = 0
		mon = 0
		tcta = ''
		sal = 1000
		idi = ''
		sbanco = Cliente.new(pass,ced,mon,tcta,sal)
		pidioma = Idioma.new(idi)
		puts "*********BIENVENIDO / WELCOME***********\n \n \n"
		puts "Seleccione su Idioma\n  ESPAÑOL (E - e) / INGLES (I - i)\n \n"
		idi = gets.chomp
		if (idi == 'e' or idi == 'E')
			pidioma.id = 'es'
		else
			pidioma.id = 'en'
		end
		while op > 0
			puts "\n ",pidioma.Clave
			pass = gets.chomp.to_i #hacerlo integer / integer = numerico  / to_s = hacer String => cadena o texto
			sbanco.clave = pass
			puts "\n ",pidioma.tipo_operacion
			tip = gets.chomp
			puts "\n ",pidioma.tipo_cuenta
			tcta = gets.chomp
			sbanco.tipo = tcta
			if (tip == 'r' or tip == 'R')
				puts "\n ",pidioma.idioma_monto
				mon = gets.chomp.to_i
				sbanco.monto = mon
			end
			puts "\n ",pidioma.idioma_cedula
			ced = gets.chomp.to_i
			sbanco.ci = ced
			if (sbanco.validacion == 1)
				if (tip == 'r' or tip == 'R')
					puts "\n Su saldo restante es: ", sbanco.retiro
				else
					puts "\n Su saldo es: ",sbanco.consultar_saldo
				end
			else
				puts "\n ",pidioma.idioma_mss_error
			end
			puts "Marque cero (0) para salir..."
			op = gets.chomp.to_i
		end
		puts "\n Hasta Luego..."
	end
end

	p = Principal.new

	p.caero
	#	puts "Presione la Tecla cero (0) para salir"
	#	op = gets.chomp.to_i
	#end
	




	
	#Saldo_banco = Montos.new([100,200,300,400,500,600])
	#p1 = banco.cliente()
	#Saldo_banco = Montos.new(500)
	#Saldo_banco.ConsultaMontos
	#puts "metodo de la clase ", Sbanco.client[0]
	#puts "metodo de la clase ", Sbanco.client[1]
	#puts "metodo de la clase ", Sbanco.client[2]
	#puts "\n llamar 1 valor del metodo", Sbanco.client.clave
