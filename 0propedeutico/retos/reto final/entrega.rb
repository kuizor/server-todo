#reto final
def texto(text)
	if (text == 0)
		return "Bienvenido a VAGOS"
	elsif (text == 1)
		return "Desea jug(a)r DEFAULT o (c)onfigurado"
	elsif (text == 2)
		return "Desea salir? (Salir 's')"
	elsif (text == 3)
		return "Seleccione cantidad de players (1-6)" 
	elsif (text == 4)
		return "Excedio el maximo Player"
	elsif (text == 5)
		return "Escriba Nombre"
	elsif (text == 6)
		return "Guardando configuracion..."
	elsif (text == 7)
		return "Iniciando juego!!"		
	elsif (text == 8)
		return "Indique la posicion del punto en coordenadas 'X' Eemplo: (x=3)"		
	elsif (text == 9)
		return "Indique la posicion del punto en coordenadas 'Y' Eemplo: (y=4)"
	elsif (text == 10)
		return "Indique el tamaño (HORIZONTAL) de la matriz"
	elsif (text == 11)
		return "Indique el tamaño (VERTICAL) de la matriz"		
	elsif (text == 12)
		return "Seleccione la cantidad de turnos"
	elsif (text == 13)
		return "Turno del lanzar la moneda a: "
	elsif (text == 14)
		return "Turno del jugador: "
	elsif (text == 15)
		return " (Presione ENTER)"									
		
	end
end

def penitencia
	
end

def validar(val)
	if(val == 'a')
		return 0
	elsif (val == 'c')
		return 1
	elsif (val > 6)
		texto(4)
		return 2
	end			
end

def player2(b,nombre,punt,bool)
	if (bool == 0) #llenar nombres
		for i in 0...b.length
			for q in 0...b[i].length
				if (q == 0)
					if(b[i][q]==nil)
						b[i][q] = i + 1	#agrego numero de posicion en la matriz
					end
				end
				if (q == 1)
					if(b[i][q]==nil)
						b[i][q] = nombre #Agrego el nombre en la matriz
						i += 1	
						return
					end
				end
			end
		end
	end
	if (bool == 1) #mostrar matriz completa
		for i in 0...b.length
			print "  "
			for q in 0...b[i].length
				print " #{b[i][q]}"
			end
			puts " \n"
		end
	end
	if (bool == 2) #mostrar ganador o empate para penitencia
		may = 0
		empate = 0
		men = b[0][2].to_i
		for i in 0...b.length
			#puts "#{b[i][2]}"
			if (b[i][2] == empate)
				puts "hubo empate"
			end
			if (b[i][2] > may)
				may = b[i][2]
				nom = b[i][1]
			end
			if (b[i][2] < men)
				men = b[i][2]
				nom2 = b[i][1]
			end
			t = i
		end
		puts "El ganador es #{nom} con #{may} y #{nom2} perdio con: #{men}"
	end
end

def pos(m,px,py)
	#px = 9
	#py = 0
	for i in 0...m.length
		print "["
		for q in 0...m[i].length
			if (q == px && i == py)
				m[i][q] = 4
			end
			if ((i==py && q==px-1)||(i==py && q==px+1)||(i==py-1 && q==px-1)||
				(i==py-1 && q==px)||(i==py-1 && q==px+1)||(i==py+1 && q==px-1)||
				(i==py+1 && q==px)||(i==py+1 && q==px+1))
				m[i][q] = 3
			end
			if ((i==py && q==px-2)||(i==py+2 && q==px)||(i==py && q==px+2)||
				(i==py-1 && q==px-2)||(i==py+1 && q==px-2)||(i==py-2 && q==px-2)||
				(i==py-2 && q==px+2)||(i==py+2 && q==px-2)||(i==py+2 && q==px-1)||
				(i==py+2 && q==px+2)||(i==py+1 && q==px+2)||(i==py+2 && q==px+1)||
				(i==py-2 && q==px+1)||(i==py-2 && q==px-1)||(i==py-2 && q==px)||(i==py-1 && q==px+2))
				m[i][q] = 2
			end
			if ((i==py && q==px-3)||(i==py+3 && q==px)||(i==py && q==px+3)||
				(i==py-1 && q==px-3)||(i==py+1 && q==px-3)||(i==py-3 && q==px-3)||
				(i==py-3 && q==px+3)||(i==py+3 && q==px-3)||(i==py+3 && q==px-1)||
				(i==py+3 && q==px+3)||(i==py+1 && q==px+3)||(i==py+3 && q==px+1)||
				(i==py-3 && q==px+1)||(i==py-3 && q==px-1)||(i==py-3 && q==px)||
				(i==py-1 && q==px+3)||(i==py-3 && q==px-2)||(i==py-3 && q==px+2)||
				(i==py-2 && q==px+3)||(i==py+2 && q==px+3)||(i==py+3 && q==px-2)||
				(i==py+3 && q==px+2)||(i==py+2 && q==px-3||(i==py-2 && q==px-3)))
				m[i][q] = 1
			end

			if(m[i][q] == nil || m[i][q] == '·')
				m[i][q] = 0
			end	
			print " #{m[i][q]}"
		end
		puts "]\n"
	end
end

def lim(m,px,py)
	for i in 0...m.length
		for q in 0...m[i].length
			if (q == px && i == py)
				m[i][q] = 4
			end
			if ((i==py && q==px-1)||(i==py && q==px+1)||(i==py-1 && q==px-1)||
				(i==py-1 && q==px)||(i==py-1 && q==px+1)||(i==py+1 && q==px-1)||
				(i==py+1 && q==px)||(i==py+1 && q==px+1))
				m[i][q] = 3
			end
			if ((i==py && q==px-2)||(i==py+2 && q==px)||(i==py && q==px+2)||
				(i==py-1 && q==px-2)||(i==py+1 && q==px-2)||(i==py-2 && q==px-2)||
				(i==py-2 && q==px+2)||(i==py+2 && q==px-2)||(i==py+2 && q==px-1)||
				(i==py+2 && q==px+2)||(i==py+1 && q==px+2)||(i==py+2 && q==px+1)||
				(i==py-2 && q==px+1)||(i==py-2 && q==px-1)||(i==py-2 && q==px)||(i==py-1 && q==px+2))
				m[i][q] = 2
			end
			if ((i==py && q==px-3)||(i==py+3 && q==px)||(i==py && q==px+3)||
				(i==py-1 && q==px-3)||(i==py+1 && q==px-3)||(i==py-3 && q==px-3)||
				(i==py-3 && q==px+3)||(i==py+3 && q==px-3)||(i==py+3 && q==px-1)||
				(i==py+3 && q==px+3)||(i==py+1 && q==px+3)||(i==py+3 && q==px+1)||
				(i==py-3 && q==px+1)||(i==py-3 && q==px-1)||(i==py-3 && q==px)||
				(i==py-1 && q==px+3)||(i==py-3 && q==px-2)||(i==py-3 && q==px+2)||
				(i==py-2 && q==px+3)||(i==py+2 && q==px+3)||(i==py+3 && q==px-2)||
				(i==py+3 && q==px+2)||(i==py+2 && q==px-3||(i==py-2 && q==px-3)))
				m[i][q] = 1
			end
			if(m[i][q] == nil || m[i][q] == '·')
				m[i][q] = 0
			end	
		end
	end
end


def moneda
	mo = rand(0..1)
	if (mo == 0)
		return 0
	end	
	if(mo == 1)
		return 1
	end
end

def jugar(ma,x,y,a,p)
	acum = 0
	varI = rand(0...x)
	varQ = rand(0...y)
	for i in 0...ma.length
		print "["
		for q in 0...ma[i].length
			if ( i == varI && q == varQ)
				punt = ma[i][q]
				ma[i][q] = '·'
			end
			print " #{ma[i][q]}"
		end
		puts "]\n"
	end
	if (moneda==0)
		sum = punt *2
		puts "La moneda esta CARA, sus puntos se duplican de #{punt} a-> #{sum}"


		for i in 0...a.length
			for q in 0...a[i].length
				if(i == p && q == 2)
					acum = a[i][q].to_i
					if (acum  == nil)
						acum = 0
					end
					a[i][q] = acum + sum
					puts "Puntos acumulados: #{a[i][q]}"
				end
			end
		end


	else
		puts "La moneda esta SELLO, sus puntos se mantienen en: #{punt}"


		for i in 0...a.length
			for q in 0...a[i].length
				if(i == p && q == 2)
					acum = a[i][q].to_i
					if (acum  == nil)
						acum = 0
					end
					a[i][q] =  acum + punt
					puts "Puntos acumulados: #{a[i][q]}"
				end
			end
		end

	end
end





#main
s = "n"
b = 0
t = 0
while (s != 's') do
	puts texto(0)
	puts texto(3)
	player = gets.chomp.to_i
	while(validar(player) == 2)
		puts texto(3)
		player = gets.chomp.to_i
	end
	a = Array.new(player){Array.new(3)}  #vector de nombres
	puts texto(1)
	conf = gets.chomp
	if (validar(conf) == 1) # 1 configurar y play despues
		for i in 0...player
			puts texto(5)
			nom = gets.chomp
			puts (player2(a,nom,0,0))
			#i += 1
		end
		#puts "#{a}"
		#tamaño de la matriz
		puts texto(10)
		m_hor = gets.chomp.to_i
		puts texto(11)
		m_ver = gets.chomp.to_i
		p = Array.new(m_hor) {Array.new(m_ver)}
		#posicion del puntero en el tablero
		puts texto(8)
		x = gets.chomp.to_i
		puts texto(9)
		y = gets.chomp.to_i
		puts (pos(p,x,y))
		#configuro cantidad de turnos
		puts texto(12)
		turno = gets.chomp.to_i
		#======================================
		puts texto(6) #aqui se guarda la aonfiguracion
		#sleep(8) #Adicional al curso... solo para agregar algo de suspenso
		puts texto(7)
	elsif (validar(conf) == 0) # 0 es para darle play con valores por default
		m_hor2 = 7
		m_ver2 = 9	
		p2 = Array.new(m_hor2){Array.new(m_ver2)}
		turno = 3
		x = 4
		y = 0
		for i in 0...player
			nom = "Player"
			puts (player2(a,nom,0,0))
		end
	end
	#========================================INICIO================================
	while (t < turno) do
		for i in 0...player
			if (validar(conf) == 1)
				for u in 0...a.length	#buscar nombre en la matriz
					for q in 0...a[u].length
						if(u == i && q == 1)
							puts "Turno de: #{a[u][q]} (ENTER)"
						end
					end	
					gets.chomp
					puts (lim(p,x,y))
					puts (jugar(p,m_hor,m_ver,a,i))
					i += 1
				end
			elsif (validar(conf) == 0)
				puts (texto(14)+"#{i+1}"+texto(15))
				gets.chomp
				puts (lim(p2,x,y))
				puts (jugar(p2,m_hor2,m_ver2,a,i))	
			end		
		end
		t += 1
	end
	puts "La puntuacion FINAL es: "
	puts (player2(a,nil,nil,1))

	puts (player2(a,nil,nil,2))		



	puts texto(2)
	s = gets.chomp
end