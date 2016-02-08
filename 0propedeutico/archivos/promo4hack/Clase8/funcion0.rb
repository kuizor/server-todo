# Genere un arreglo de num aleatorios de 15 
# valores del 0 al 100 y determine el menor,
# mayor y promedio

def minimo(x)
	min = x[0]
	for i in 0..x.length-1
		if x[i] < min
			min = x[i]
		end
	end
	return min
end

def maximo(x)
	max = x[0]
	for i in 0..x.length-1
		if x[i] > max
			max = x[i]
		end
	end
	return max
end

def prom(x)
	sum = 0
	for i in 0..x.length-1
		sum = sum + x[i]
	end
	return sum / x.length
end

def llenar_arreglo(l)
	x = []
	for i in 0..l - 1
		x[i] = rand(101)
	end
	return x
end

def mostrar_info(y, t)
	min = minimo(y)
	max = maximo(y)
	prom = prom(y)
	
	puts "#{t} = #{y}"
	#puts "Min= #{min}"
	#puts "Max: #{max}"
	#puts "Prom: #{prom}"
end

def existe(n, x)
	o = []
	for i in 0..x.length - 1
		if x[i] == n
			o[o.length] = i + 1
		end
	end
	return o
end

def buscar(n, x, t)
	o = existe(n, x)
	if o.length > 0
		puts "Encontrado en las posiciones #{o} del arreglo #{t}"
	else
		puts "No encontrado en arreglo #{t}"
	end
end

a = llenar_arreglo(20)
b = llenar_arreglo(rand(10))
c = llenar_arreglo(15)

def principal
end

mostrar_info(a, "a")
mostrar_info(b, "b")
mostrar_info(c, "c")

op = ""
while (op != "s") do
	puts "Ingrese el numero:"
	n = gets.chomp.to_i

	buscar(n, a, "a")
	buscar(n, b, "b")
	buscar(n, c, "c")
	puts "Desea salir?"
	op = gets.chomp
end

=begin
mostrar_info(a, "a")
mostrar_info(b, "b")
mostrar_info(c, "Arreglo c")
=end