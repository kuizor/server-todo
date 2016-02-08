#Escriba el código Ruby que genere una matriz 15x15 de números enteros
#aleatorios y retorne la suma de sus elementos impares.
a = Array.new(15){Array.new(15)}
acum = 0
for i in 0...15
	for q in 0...15
		a[i][q] = rand(0...10)
		val = a[i][q] % 2
		if (val == 0)
			puts "Primo: #{a[i][q]}"
			acum = acum + a[i][q].to_i
		end	
	end
end
puts "#{a}"
puts "La suma de todos los impares es: #{acum}"