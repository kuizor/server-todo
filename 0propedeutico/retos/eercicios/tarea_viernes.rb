#escriba el codigo Ruby que genere una matriz 20x20 de numeros aleatorios distintos
#la ordene de menor a mayor y devuelva la posicion (par ordenado) en la matriz
#ordenada en la que se encuentra un numero dado por el teclado


a = Array.new(20){Array.new(20)}
b = Array.new(400)
aux = 0
op = 's'
b_i = 0
b[0] = rand(0...1000)
for i in 1...b.length do
	ban = true
	num = rand(0..1000)
	for q in 0...i do		
		if(b[q] == num)
			ban = false
		end
	end
	#puts "paso"
	while (!ban) do
		#puts "paso"
		ban = true
		num = rand(0..1000)
		for q in 0...i
			if (b[q]==num)
				ban=false
			end
		end
	end
	b[i] = num
end
puts "\nLa Matriz generada es:"
for i in 0...a.length
	print "["
	for q in 0...a.length
		a[i][q] = b[b_i]
		b_i += 1
		print "#{a[i][q]} "
	end
	puts "]\n"
end
for i in 0...a.length do
	for q in 0...a.length do
		for x in 0...a.length do
			for y in 0...a.length do
				if(a[i][q] < a[x][y])
					aux = a[x][y]
					a[x][y] = a[i][q]
					a[i][q] = aux
				end
			end
		end
	end
end
puts "\n La Ordenada es:"
for i in 0...a.length
	print "["
	for q in 0...a.length
		print "#{a[i][q]} "
	end
	puts "]\n"
end
while op == 's' do
	puts "Que numero desea buscar en la matriz?"
	num = gets.chomp.to_i	
		for i in 0...a.length do
			for q in 0...a.length do
				if (a[i][q].to_i==num)
					puts "El Numero (#{num}) se encuentra en la posicion: a[#{i}][#{q}]"
				end
			end
		end
	puts "Desea seguir buscando? (Si 's' /No 'n')"
	op = gets.chomp
end