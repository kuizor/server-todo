#calcular la sumatoria de un numero dado
#5+4+3+2+1+0 = 15

=begin
	
rescue Exception => e
	
end
puts "Introduzca el numero: "
num = gets.chomp.to_i
n = 0
acum = 0
while (n <= num)
	sum = n + 1 #
	acum = acum + n
	n += 1
end
puts "Sumatoria es: ",acum
=end

puts "Introduzca el numero: "
n = gets.chomp.to_i

i = 0
s = 1
#acum = 0
while (i <= n) do
	s = s + 1 #
#	acum = acum + n
	i += 1
end
puts "Sumatoria es: ",s
