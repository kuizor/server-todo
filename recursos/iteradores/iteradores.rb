#ITERADORES

def iterador1
	5.times{ puts "Hola"}		
end

def iterador2
	5.times{|i| puts "#{i}"}
end

def iterador3
	0.upto(10){|i| puts "#{i}"}
end

def iterador_reversa
	5.downto(0){|i| puts "#{i}"}
end

def for_validado
	for i in 1..10 do 
		puts "Hola #{i}"
		if (i == 5)
			break
		end
	end

	i = 0
	until i == 10
		puts "Chao #{i}"
		i += 1
	end
end

for_validado

=begin
i = rand(0..5) 
#********************************************************Condicional switch case

value = case i
	when 1 then "Uno"
	when 2 then "Dos"
	when 3 then "Tres"
	when 4 then "Cuatro"
	when 5 then "Cinco"
	else "Cualqueir Otro"
end

puts "El valor es #{value}"
=end

=begin
#********************************************************rangos
rango = (0..5)
puts rango.class
i = 0
rango.each{|i| puts i.to_s}


rango2 = ("A".."Z")
p = 0
rango2.each{|p| print p.to_s}
puts
=end
#****************************************************** valor dentro de un rango
=begin
i = 42
value = case i
	when 1..10 then 
		"Uno"
	when 11.20 then 
		"Dos"
	when 21..30 then 
		"Tres"
	when 31..40 then 
		"Cuatro"
	when 41..50 then 
		"Cinco"
	else "Cualqueir Otro"
end

puts "El valor es #{value}"
=end
=begin
#********************************************************Aqui se muestra como ruby toma la ultima variable como la palabra reservada "return"
def pepe 
	i = "coco"
	
	i
end
puts pepe
=end
=begin
rango2 = ("A".."C50")
p = 0
rango2.each{|p| puts p.to_s}
puts
=end
#********************************************************otra forma de usar el each
#("a".."d").each{|i| puts i}
=begin
a.insert 0, "Lunes", "Martes"	#Integra el elemento al arreglo en la posicion dada y mueve la pila de datos
puts "#{a}"

b = []
b.push(1)
b.push(2)
b.push(3)

puts "#{b}"

c = a + b

puts "#{c}"

c = b + a

puts "#{c}"

e = (4..6)

puts "#{e}"
=end