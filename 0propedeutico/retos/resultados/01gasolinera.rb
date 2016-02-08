#01gasolinera
#escriba un algoritmo en pseudocodigo para poner gasolina desde un dispensador de una gasolinera
#Dispensador de gasolina Venezolana
disp = 's'
puts "Seleccione El Pico y coloquelo en la boquilla de llenado de su vehiculo"
puts "Seleccione su octanaje Baja(91) o Alta(95) y presione +Enter+"
oct = gets.chomp.to_i
if (oct == 91)
	puts "Suministrando...91"
	sleep(2)
 	puts "Suministrando...91"
 	sleep(2)
 	puts "Suministrando...91"
 	sleep(2)
 	puts "Suministrando...91"
 	sleep(5)
 	puts "..."
 	puts "Seguir dispensando? /si (s) /no (n)"
 	disp = gets.chomp.to_s
 	while (disp == 's') do
 		puts "Suministrando...91"
 		sleep(2)
 		puts "Suministrando...91"
 		sleep(2)
 		puts "..."
 		puts "Seguir dispensando? /si (s) /no (n)"
 		disp = gets.chomp.to_s
 		if (disp == 'n')
 			break
 		end
 	end
else
	puts "Suministrando...95"
	sleep(2)
 	puts "Suministrando...95"
 	sleep(2)
 	puts "Suministrando...95"
 	sleep(2)
 	puts "Suministrando...95"
 	sleep(5)
 	puts "..."
 	puts "Seguir dispensando? /si (s) /no (n)"
 	disp = gets.chomp.to_s
 	while (disp == 's') do
 		puts "Suministrando...95"
 		sleep(2)
 		puts "Suministrando...95"
 		sleep(2)
 		puts "..."
 		puts "Seguir dispensando? /si (s) /no (n)"
 		disp = gets.chomp.to_s
 		if (disp == 'n')
 			break
 		end
 	end
end
puts "Retire el pico y coloquelo en el dispensador"
sleep(3)
puts "Hasta luego"