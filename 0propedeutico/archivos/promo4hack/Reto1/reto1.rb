
m = []
for i in 0..19
	m[i] = []
	for j in 0..19
		m[i][j] = rand(1000)
	end
end

for i in 0..m.length
	puts m[i].to_s
end
