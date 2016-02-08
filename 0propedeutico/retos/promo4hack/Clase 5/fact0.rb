# Dado un número, calcular su factorial

puts "Introducir numero: "
num = gets.chomp.to_i

fact = 1
i = num

while (i >= 1) do
	fact = fact * i
	i = i - 1
end

puts fact