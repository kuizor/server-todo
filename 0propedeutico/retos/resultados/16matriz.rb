#Escriba el código Ruby que genere dos (2) matrices 10x10 de números
#enteros aleatorios y realice la suma de dichas matrices dejando el resultado
#en una tercera matriz.
a = Array.new(10){Array.new(10)}
b = Array.new(10){Array.new(10)
c = Array.new(10){Array.new(10)


#a = [[],[],[],[],[],[],[],[],[],[]]
#b = [[],[],[],[],[],[],[],[],[],[]]
#c = [[],[],[],[],[],[],[],[],[],[]]
#a = Array.new(Array.new)
#a = [[23,43,12],[234,2,23]]

for i in 0...10
	for q in 0...10
		a[i][q] = rand(1..10)
		b[i][q] = rand(1..10)
		c[i][q] = a[i][q] + b[i][q]
	end
end
puts "#{a}"
puts "#{b}"
puts "#{c}"
=begin
a = [[],[],[]]
b = [[],[],[]]
c = [[],[],[]]
#a = Array.new(Array.new)
#a = [[23,43,12],[234,2,23]]
for i in 0...3
	for q in 0...3
		a[i][q] = rand(1..10)
		b[i][q] = rand(1..10)
		c[i][q] = a[i][q] + b[i][q]
	end
end
puts "#{a}"
puts "#{b}"
puts "#{c}"
=end