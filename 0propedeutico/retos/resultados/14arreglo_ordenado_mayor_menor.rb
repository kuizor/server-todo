#Escriba el código Ruby que genere un arreglo con 20 números enteros
#aleatorios y devuelva el arreglo con sus valores ordenados de mayor a
#menor.

a = Array.new
a = []
for i in 0..19
	a[i] = rand(0..100)
end
puts "Array desordenado: #{a}"
a.sort!
puts "Array Ordenado: #{a.reverse}"