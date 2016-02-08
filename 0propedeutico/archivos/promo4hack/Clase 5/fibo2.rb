# f(n) = f(n-1) + f(n-2)
# f(0) = 0   &&   f(1) = 1

puts "Ingrese un numero"
n = gets.chomp.to_i

fib = [0, 1]

i = 2

while (i <= n) do
	fib[i] = fib[i-1] + fib[i-2]
	i = i + 1
end

puts "fib[#{n}]: #{fib[n]}"