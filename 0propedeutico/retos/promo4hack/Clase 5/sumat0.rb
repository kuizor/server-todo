# Calcular la sumatoria desde cero hasta un número dado
# Si n = 5 => 0 + 1 + 2 + 3 + 4 + 5 = 15


puts "Ingrese el mumero"
n = gets.chomp.to_i

s = 0
=begin
i = 1 

while (i <= n) do
	s = s + i
	i+= 1
end
=end

for i in 1..n do
	s = s + i
end

# ----
s = (n * (n + 1) ) / 2

puts s
