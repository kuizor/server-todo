a = [0,4,3]
b = [2,5,7]
c = [9,0,1]
m = []
op = 's'
m[0] = a
m[1] = b
m[2] = c

puts m.to_s
while op == 's' do
	puts "Que numero desea buscar en la matriz?"
	num = gets.chomp.to_i	
	for i in 0...3 do
		for q in 0...3 do
			if (m[i][q].to_i==num)
				puts "El Numero (#{num}) se encuentra en la posicion: m[#{i}][#{q}]"
			end
		end
	end
	puts "Desea seguir buscando? (Si 's' /No 'n')"
	op = gets.chomp
end

