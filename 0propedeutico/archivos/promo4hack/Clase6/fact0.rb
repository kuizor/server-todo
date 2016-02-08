# Calcule el factorial de un numero dado
# f(n) = 1 * 2 * 3 * 4 * ... * n

puts "Ingrese el numero"
n = gets.chomp.to_i

m = 1
for i in 1..n do
	m = m * i
	puts "Entre"
end

puts "El fact de #{n} es #{m}"