# Genere un arreglo de num aleatorios de 15 
# valores del 0 al 100 y determine el menor,
# mayor y promedio. VERSION EMANUEL

sum = 0
a = []
min = 101
max = -1

for i in 0..14
	a[i] = rand(101)

	if a[i] < min
		min = a[i]
	end

	if a[i] > max
		max = a[i]
	end

	sum = sum + a[i]
end

puts "a = #{a}"
puts "Min: #{min}"
puts "Max: #{max}"
puts "Prom: #{sum / a.length}"