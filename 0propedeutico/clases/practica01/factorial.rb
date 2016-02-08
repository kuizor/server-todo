#factorial fac 4 = (4 * 3) + (4 * 2) + (4 * 1) = 24
#  corrida         12 + 8 + 4 = 24

#factorial 4 = (4 * 3) + (5 * 3) + (5 * 2) + (5 * 1) = 
class Pepe
	def pepe
		res=0
		res2 = 0
		sum2 = 0
		puts "Introducir Numero"
		dato = gets.chomp.to_i
		res2 = dato
		while dato > 0
	 		res = dato - 1
	 		dato = res
	 		#puts res
	 		sum = res * res2
	 		#puts sum
	 		sum2 = sum2 + sum
	 		#puts sum2
		end
		puts "El factorial es:",sum2
	end
	def fact
		puts "Introducir Numero: "
		num = gets.chomp.to_i
		num2 = num
		while num > 0
			res = num - 1
			num = res
			puts res
			if (res > 0)
				num2 = num2 * res
				puts num2
			end
		end
		puts "El factorial es:",num2
	end
end

p = Pepe.new()

p.fact