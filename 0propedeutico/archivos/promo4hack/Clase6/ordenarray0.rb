# Genere un arreglo con 20 números enteros aleatorios y devuelva el
# arreglo con sus valores ordenados de menor a mayor

=begin
Reglas básicas para la asignación de nombres a variables
1.- debe sugerir lo que representa
2.- no puede coincidir con palabras reservadas del lenguaje
3.- no debe exceder un tamaño de 32 caracteres
4.- comenzará siempre por un caracter alfabético y los siguientes podrán ser letras, dígitos o el símbolo “_”
=end

# Genero el arreglo sin valores repetidos
a = []
i = 0
while i < 20
	rep = false
	j = 0
	temp = rand(20) + 1
	while !rep && j < a.length
		rep = temp == a[j] ? true : false
		j+= 1
	end
	if !rep
		a[i] = temp
		i+= 1
	end
end

puts "D: #{a}:#{a.length}"

# Ordeno el arreglo: Metodo Seleccion
for j in 0..a.length - 1
	imenor = j
	for i in j..a.length - 1
		if a[i] < a[imenor]
			imenor = i
		end
	end
	t = a[j]
	a[j] = a[imenor]
	a[imenor] = t
end

puts "O: #{a}:#{a.length}"