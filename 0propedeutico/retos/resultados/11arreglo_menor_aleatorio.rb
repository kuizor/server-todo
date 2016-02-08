#Escriba el código Ruby que genere un arreglo con 10 números enteros
#aleatorios y devuelva el menor número de dicho arreglo.

a = Array.new
a = []
ant = 0
num = 101
for i in 0..9
	a[i] = rand(0..100)
	puts "#{a[i]}"
	ant = a[i].to_i
	if (ant < num)
		num = a[i]
	end
	i += 1
end
puts "El menor es: #{num}"