#funciones con array
#m = Array.new(8){Array.new(3)}
#b = [0,1,2,3,4,3,2,1,0,
#	0,1,2,3,3,3,2,1,0,
#	0,1,2,2,2,2,2,1,0,
#	0,1,1,1,1,1,1,1,0,
#	0,0,0,0,0,0,0,0,0,
#	0,0,0,0,0,0,0,0,0,
#	0,0,0,0,0,0,0,0,0]
t = Array.new(2){Array.new(2)}
#Array para cargar y mostrar solo una columna

for i in 0...t.length
	print "["
	for q in 0...t[i].length
		if (q == 0)
			t[i][q] = 5
			print " #{t[i][q]}"
		end
	end
	puts "]\n"
end
for i in 0...t.length
	print "["
	for q in 0...t[i].length
		if (q == 1 )
			t[i][q] = 2
			print " #{t[i][q]}"
		end
	end
	puts "]\n"
end
for i in 0...t.length
	print "["
	for q in 0...t[i].length
		print " #{t[i][q]}"
	end
	puts "]\n"
end
puts "#{t}"

#puts b.at(3) #muestra el contenido de la posicion 3
=begin
b = [1,2,3,4,5,6,7,8,9,1]
puts b.length
puts b.length.4
=end

#mostrar la matriz de forma cuadrada cuando no es cuadrada
=begin
for i in 0...m.length
	print "["
	for q in 0...m[i].length
		m[i][q] = 'i'
		print " #{m[i][q]}"
	end
	puts "]\n"
end
=end

#codigo para cargar un vector dentro de un array y mostrar la matriz
=begin
p=0
for i in 0...m.length
	print "["
	for q in 0...m[i].length
		m[i][q] = b[p]
		print " #{m[i][q]}"
		p += 1
	end
	puts "]\n"
end
=end
=begin
m = Array.new(10) {Array.new(10)}

px = 9
py = 0

for i in 0...m.length
	print "["
	for q in 0...m.length
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

		if(m[i][q] == nil)
			m[i][q] = 0
		end	
		print " #{m[i][q]}"
	end
	puts "]\n"
end

=end

