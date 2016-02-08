#generar una matriz de dimension 5x10 de numeros aleatorios
=begin
a = Array.new(5) {Array.new(10)}

for i in 0...5 do
	for q in 0...10 do
		a[i][q] = rand(0..10)
	end
end
puts a
puts "#{a.transpose}" #Invierte la matriz
#puts "#{a.size}" #tamaño del array

a = Array.new(5) {Array.new(10)}

for i in 0...5 do
	for q in 0...10 do
		a[i][q] = rand(0..10)
	end
end
puts a
puts "#{a.transpose}" #Invierte la matriz
#puts "#{a.size}" #tamaño del array


#generar una matriz de dimension 5x10 de numeros aleatorios
#Imprimir la diagonal principal
a = Array.new(3) {Array.new(3)}

for i in 0...3 do
	for q in 0...3 do
		a[i][q] = rand(0..10)
		if (i == q)
			print " #{a[i][q]} \n"
		end
	end
end
puts "#{a}"
=end

#Arreglo de enteros aleatorios de 20 e imprimirlos a la inversa
a = Array.new(19)
#b = Array.new(19)
for i in 0...20 do
	a[i]= rand(0..10)
end
puts "#{a}"
print "I: ["
for i in 0...a.length-1 do
	puts a[a.length-1- i].to_s
end

#puts "#{b}"

#puts "#{a.pop}"
