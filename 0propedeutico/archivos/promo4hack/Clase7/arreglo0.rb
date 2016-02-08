# Genere un arreglo de enteros aleatorios de longitud 20 e imprima
# sus valores a la inversa (5min)

a = []
for i in 0..19
	a[i] = rand(500)
end
puts "A: #{a.to_s}"
print "I: ["
for i in 0..a.length - 1
	print a[a.length - 1 - i].to_s + t = (i < a.length-1) ? ", " : "]"
end
puts