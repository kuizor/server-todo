#calculadora
resp = "s"
while (resp == "s" or resp == "S")
	puts "***************************\n"
	puts "*      1 SUMAR            *\n"
	puts "*      2 RESTAR           *\n"
	puts "*      3 MULTIPLICAR      *\n"
	puts "*      4 DIVIDIR          *\n"
	puts "***************************\n"
	puts "INSERTE UNA OPCION (1-4)\n"
	op = gets.chomp
	op.to_i
	while (op.to_i <= 0 or op.to_i >=5)
		puts "ERROR: INSERTE UNA OPCION VALIDA (1-4)\n"
		op = gets.chomp
		op.to_i
	
	if (op.to_i == 1)
		puts "\n Inserte 1 valor a SUMAR: "
		a= gets.chomp
		a.to_i
		puts "\n Inserte otro valor "
		b= gets.chomp
		b.to_i
		c = a.to_i + b.to_i
		c.to_i
		puts "\n El resultado es: ", c
	
	if (op.to_i == 2)
		puts "\n Inserte 1 valor a RESTAR: "
		a= gets.chomp
		a.to_i
		puts "\n Inserte otro valor "
		b= gets.chomp
		b.to_i
		c = a.to_i - b.to_i
		c.to_i
		puts "\n El resultado es: ", c
	
	if (op.to_i == 3)
		puts "\n Inserte 1 valor a MULTIPLICAR: "
		a= gets.chomp
		a.to_i
		puts "\n Inserte otro valor "
		b= gets.chomp
		b.to_i
		c = a.to_i * b.to_i
		c.to_i
		puts "\n El resultado es: ", c
	
	if (op.to_i == 4)
		puts "\n Inserte 1 valor a DIVIDIR: "
		a= gets.chomp
		a.to_i
		puts "\n Inserte otro valor "
		b= gets.chomp
		b.to_i
		c = a.to_f / b.to_f
		c.to_f
		puts "\n El resultado es: ", format("%.2f",c)
	
	puts "Si Desea salir de la calculadora  (S)"
	resp = gets.chomp

puts "\n Hasta luego!"