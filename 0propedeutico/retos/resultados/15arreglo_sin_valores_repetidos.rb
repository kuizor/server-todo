#Escriba el código Ruby que genere un arreglo con 20 números enteros
#aleatorios distintos (no puede haber valores repetidos en el arreglo).
a = Array.new
for i in 0...20
	a[i] = rand(0..100)
end
puts "Array: #{a.sort}"
puts "Array sin valores repetidos: #{a.uniq!}"