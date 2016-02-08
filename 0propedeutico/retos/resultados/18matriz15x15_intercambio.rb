#Escriba el código Ruby que genere una matriz 15x15 de números enteros
#aleatorios e intercambie sus filas por sus columnas.
a = Array.new(3){Array.new(3)}
b = Array.new(3){Array.new(3)}



for i in 0...a.length
	for q in 0...a.length
		a[i][q] = rand(0...100)
	end
end
for i in 0...a.length
	print "["
	for q in 0...a.length
		print "#{a[i][q]} "
	end
	puts "]\n"
end
puts "\n"
=begin
puts "#{a}"
for q in 0...a.length
	for i in 0...a.length
		if(a[i][q] < a[0][0])
			aux = a[i][q]
			a[i][q] = a[i+1][q-1]
			a[i][q] = aux
			puts "#{a[i][q]}"
		end
	end
=end
#metodo intercambiar filas por columnas

i=0
q = 0
for i in 0...a.length do
	#puts "Pos[#{i}][#{q}]: #{a[i][q]}"
	for q in 0...a.length do
		for x in 0...a.length-1 do
			#puts "Pos[#{i}][#{q}]: #{a[i][q]}"
			for y in 0...a.length-1 do
				aux = a[i][q]
				a[i][q] = a[x][y]
				a[x][y] = aux
			end
		end
	end
end
for i in 0...a.length
	print "["
	for q in 0...a.length
		print "#{a[i][q]} "
	end
	puts "]\n"
end


=begin
#Metoro para ordenar una matriz
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
puts "#{a}"
=end