# Algoritmo para calcular el area de un circulo dado el radio, sabiendo que
# el area es igual a 3.14 multiplicado por el radio al cuadrado

puts "Introduzca el radio del circulo"

Radio = gets.chomp.to_f

Pi = 3.14

Area = Pi*(Radio**2)

puts Area

