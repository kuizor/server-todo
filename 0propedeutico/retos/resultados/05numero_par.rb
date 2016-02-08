#Escriba el código Ruby que reciba un número entero, deduzca si es par y
#retorne el valor lógico según el caso.
res = 0
puts "Introduzca un numero entero"
num = gets.chomp.to_i
funcion = num = num % 2
while (num >= 0) do
	num = num % 2
	if (num == 0 )
		puts "es Par"
		break
	end
	if (num == 1)
		puts "Es impar"
		break
	end
end
puts funcion


