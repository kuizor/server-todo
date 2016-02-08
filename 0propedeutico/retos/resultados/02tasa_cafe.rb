#Escriba un algoritmo en pseudocódigo para hacer una taza de café.
des = 'n'
des2 = 'n'
des3 = 'n'
puts "Busque el embase donde coloca el cafe"
sleep(3)
puts "Ya lo encontro? (Si 's' / No 'n')"
des = gets.chomp
while (des != 's') do
	sleep(3)
	puts "Ya lo encontro? (Si 's' / No 'n')"
	des = gets.chomp
end
puts "Busque el embase donde coloca el azucar"
sleep(3)
puts "Ya lo encontro? (Si 's' / No 'n')"
des2 = gets.chomp
while (des2 != 's') do
	puts "Ya lo encontro? (Si 's' / No 'n')"
	des2 = gets.chomp
end
puts "Coloque end una olla agua hasta hervir"
sleep(2)
puts "hirvio? (S ó N)"
hie = gets.chomp
while (hie != 's') do
	sleep(3)
	puts "hirvio? (Si 's' / No 'n')"
	hie = gets.chomp
end
puts "Sirva 1 cucharada de cafe en el colador de CAFE"
puts "Coloque la taza debao del colador"
puts "Servir el agua sobre el cafe hasta que la taza llegue al tope"
puts "Agregue azucar al gusto.."

