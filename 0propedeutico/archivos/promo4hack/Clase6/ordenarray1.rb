# Genere un arreglo con 20 números enteros aleatorios distindos y
# devuelva el arreglo con sus valores ordenados de menor a mayor

# Genero el arreglo sin valores repetidos
a = []
while a.length < 20 do
	rep = false
	n = rand(20) + 1
	i = 0
	while !rep && i < a.length do
		rep = n == a[i] ? true : false
		i+= 1
	end
	if !rep
		a[a.length] = n
	end
end
puts "D: #{a.to_s}:#{a.length}"

# Ordeno el arreglo: Metodo Burbuja (Bubble Sort)
for i in 1..a.length - 1
	for j in 0..(a.length - 1) - i
		if a[j + 1] < a[j]
			t = a[j]
			a[j] = a[j + 1]
			a[j + 1] = t
		end
	end
end

puts "O: #{a.to_s}:#{a.length}"