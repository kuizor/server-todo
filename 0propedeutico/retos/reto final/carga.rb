#metodo de carga de nombres en un vector
=begin
def player2(nombre,b)
	for i in 0...b.length
		if(b[i]==nil)
			b[i] = nombre
			i += 1	
			return
		end
	end
end



#a = Array.new(10)
cant = 5
a = Array.new(cant)
b=0
while (b<5) do
	puts "introduzca nombre"
	nom = gets.chomp

	puts (player2(nom,a))
	b += 1
end
puts "#{a}"
=end

#metodo de carga de nombres en una matriz
def player2(nombre,b)
	for i in 0...b.length
		for q in 0...b.length
				b[i][q] = nombre
				i += 1	
				return
			end
		end
	end
end



#a = Array.new(10)
cant = 5
cant2 = 2
a = Array.new(cant){Array.new(cant2)}
b=0
while (b<5) do
	puts "introduzca nombre"
	nom = gets.chomp
	puts "Puntuacion"
	punt = gets.chomp
	puts (player2(nom,a,punt))
	b += 1
end
puts "#{a}"