a = [0, 4, 3]
b = [2, 5, 7]
c = [9, 0, 1]

m = []

m[0] = a
m[1] = b
m[2] = c

puts m[0].to_s
puts m[1].to_s
puts m[2].to_s


puts m[2][1] # > 0
puts m[1][1] # > 5
puts m[2][0] # > 9
puts "--"
for i in 0..2 do
	for j in 0..2 do
		puts m[i][j]
	end
end
puts "--"
puts m