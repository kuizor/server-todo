#Escriba el código Ruby que genere un arreglo con 20 números enteros
#aleatorios.

#partiendo los enteros desde el cero hasta el 100
a = Array.new
a = []
i = 0
for i in 0..19
	a[i] = rand(0..100)
	puts "#{a[i]}"
	i = i + 1
end
#puts "rand",rand(20..30)