#sucesion Fibonacci

=begin
	comentario multilinea
	linea2
	linea3
=end
class Arreglo

	def cargar_arreglo
		num = Array.new
		i = 0
		op = 0
		while op == 0 do 
			puts "Ingrese el valor a ingresar al array"
			num = gets.chomp.to_i
			num = num[i]
			i += 1
			puts "cero (0) para seguir cargando"
			op = gets.chomp.to_i
		end
	end

	def cargar_mostrar_vector
		num = Array.new
		i = 0
		op = 0
		cont = 0
		while op == 0 do 
			puts "Ingrese el valor a ingresar al array"
			num[i] = gets.chomp.to_i
			i += 1
			cont +=1
			puts "cero (0) para seguir cargando"
			op = gets.chomp.to_i
		end
		i=0
		puts "Contador #{cont}"
		for i in 0..cont
			puts num[i].to_i
			i +=1
		end
	end
#0 1 1 2 3 5 8 13 21 34
# f(n) = f(n-1) + f(n-2)	
	def arreglo
		#f = Array.new
		puts "Ingrese el numero"
		n = gets.chomp.to_i
		f = [0,1]
		i = 2
		while (i <=  n ) do
			f[i] = f[i-1] + f[i-2]
			# 1  =     1   +   0
			i = i + 1
			#puts "f(#{f[i].to_i})"
			#puts "i: #{i}"
		end
		puts "f(#{f[i]})"


		#opcion 2 con for
		#for i in 0...n
		#	ant = ant - 1
		#	ant2 = ant - 2
		#	num[i] = ant + ant2
		#	puts "f(#{num[i]})"
		#	puts "i: #{i}"
		#end
	end
end

d = Arreglo.new()
d.arreglo