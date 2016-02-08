#Escriba el código Ruby que genere un arreglo con 10 números enteros
#aleatorios y devuelva el promedio de todos los valores de dicho arreglo.
#promedio = suma de todos / i

a = Array.new
a = []
ant = 0
sum = 0
acum = 0
prom = 0
for i in 0..3
	a[i] = rand(0..100)
	ant = a[i].to_i
	puts "#{i}:#{a[i]}"
	acum = acum + ant
	if (i>0)
		prom = acum / i
	end
	i += 1
end
puts "El promedio del array #{a} es la suma total del array (#{acum})/#{i} => #{prom}"
#puts "Valor pos 5 es:#{a.at(5)}"
#puts a
#puts "Array:#{a}"
#puts "ultimo: #{ant}"
#puts "suma: #{acum}"
#prom = sum / i
#puts "El promedio es: #{prom}"