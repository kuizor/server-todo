# Sucesion de Fibonacci: 

# Formas de crear un arreglo:
# 1
f = Array.new
# 2
f = []
# 3
f = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]


a = 0
while ( a < 11 ) do
	# f[3]: 2
	# f[4]: 3
	puts "f[#{a}]: #{f[a]}"
	#puts "f[" + a.to_s + "]: " + f[a].to_s
	a = a + 1
end

=begin
f[0] = 0
f[1] = 1
f[2] = 1
f[3] = 2
f[4] = 3
f[5] = 5
f[6] = 8
f[7] = 13
f[8] = 21
f[9] = 34
f[10] = 55
f[-2] = -2

puts f[0]
puts f[1]
puts f[2]
puts f[3]
puts f[4]
puts f[5]

puts f.class

f[11] = 89

puts f[11]

f[20] = 1000

puts "f[20]: #{f[20]}"
puts "f[17]: #{f[17]}"
=end