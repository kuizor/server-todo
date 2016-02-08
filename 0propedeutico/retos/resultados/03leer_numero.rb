#Escriba el pseudocódigo y el código Ruby que lea un número y deduzca si
#está entre 10 y 100, ambos inclusive, y devuelva el valor lógico según el
#caso.

puts "Introduce un numero"
num = gets.chomp.to_i

resultado = num >= 10 && num<=100
if (resultado)
	puts "Esta dentro.."
else
	puts "No esta dentro"
end 
puts resultado

#puts (resultado)? "Dentro" : "Fuera"

#pepe = (resultado)? "Dentro" : "Fuera"

#puts pepe
