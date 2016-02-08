
a = Array.new(2){Array.new(2)}
a[0][0] = rand(0..30)
for i in 0...a.length do
	#puts "Paso por i(#{i})"
	for q in 0...a.length do
		puts "Paso por i(#{i}),q(#{q})"
		num = rand(0...30)
		ban = true
		puts "GEnero num1: #{num}"
		for x in 0...a.length do
			#puts "Paso por x(#{x})"
			for y in 0...a.length do
				puts "Paso por x(#{x}),y(#{y})"
				if (a[x][y] == num)
					ban = false
					puts "#Activo la bandera con: #{a[x][y]} "
				end
			end
		end

		while (!ban) do 
			puts "Entro en el while"
			ban = true
			for x in 0...i do
				for y in 0...q do
					if (a[x][y] == num)
						ban = false
						num = rand(0...30)
					end
				end
			end
		end
		a[i][q] = num
	end
	a[i][q] = num
end
puts "#{a}"
for i in 0...a.length do
	for q in 0...a.length do
		for x in 0...a.length do
			for y in 0...a.length do
				if(a[i][q] < a[x][y])
					aux = a[x][y]
					a[x][y] = a[i][q]
					a[i][q] = aux
				end
			end
		end
	end
end
puts "#{a}"
