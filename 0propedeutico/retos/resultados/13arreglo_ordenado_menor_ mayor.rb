#Escriba el código Ruby que genere un arreglo con 20 números enteros
#aleatorios y devuelva el arreglo con sus valores ordenados de menor a
#mayor.

a = Array.new
#a = [12,34,3,45,1]
for i in 0..19
	a[i] = rand(0..100)
end
puts "Array como ingreso: #{a}"
puts "Array Ordenado: #{a.sort}" #ordenar un array
#puts a.count #tamaño del array
#puts a.length #tamaño del array