#Escriba el código Ruby que muestre la cantidad de números enteros pares e
#impares entre 1 y un número entero dado por teclado.
puts "Introduzca numero"
num = gets.chomp.to_i
i = 1
while (i<=num)
	val = i % 2
	if (val == 1)
		puts "#{i} es par"
	elsif (val == 0)
		puts "#{i} es impar"
	end
	i+=1
end