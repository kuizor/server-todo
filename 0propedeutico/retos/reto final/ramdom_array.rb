#ramdom de un array
=begin
v = [1,2,3]

ran = v[rand(v.length)]
puts ran

p = rand(0..4)
#puts p
=end

#=================================================
#este Array coloca un punto "·" en la posicion dada de la funcion ramdom
m = Array.new(9){Array.new(7)}
varI = rand(0...7)
varQ = rand(0...9)
puts "La moneda ha caido en la posicion: #{varI},#{varQ}"
for i in 0...m.length
	for q in 0...m.length
		if ( i == varI && q == varQ)
			punt = m[i][q]
			m[i][q] = '·' 
		end
	end
end

puts m