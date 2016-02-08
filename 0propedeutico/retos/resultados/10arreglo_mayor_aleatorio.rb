#Escriba el código Ruby que genere un arreglo con 10 números enteros
#aleatorios y devuelva el mayor número de dicho arreglo.

#enteros del 0 al 100

a = Array.new()
a = []
i = 0
ant = 0
num = 0
for i in 0..9 #cargamos el array
	a[i]= rand(0..100)
	puts "#{a[i]}"

	num = a[i].to_i
	if (num > ant)
		ant = num
	end
	i += 1
end
puts "El mayor es: #{ant}"