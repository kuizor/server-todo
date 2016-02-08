#calculadora.suma
class Calculadora 
	result = 0
	def initialize(valor1,valor2)
		@valor1 = valor1
		@valor2 = valor2
	end

	def sumar
		result = @valor1.to_i + @valor2.to_i
		#puts "contenido del valor1 es: #{@valor1} y el valor2 es: #{@valor2}"
		puts "El resultado de la SUMA es: ",result
	end

	def restar
		result = @valor1.to_i - @valor2.to_i
		#puts "contenido del valor1 es: #{@valor1} y el valor2 es: #{@valor2}"
		puts "El resultado de la RESTA es: ",result
	end

	def multiplicar
		result = @valor1.to_i * @valor2.to_i
		#puts "contenido del valor1 es: #{@valor1} y el valor2 es: #{@valor2}"
		puts "El resultado de la MULTIPLICACION es: ",result
	end

	def dividir
		result = @valor1.to_f / @valor2.to_f
		#puts "contenido del valor1 es: #{@valor1} y el valor2 es: #{@valor2}"
		puts "El resultado de la DIVISION es: ", format("%.2f",result)
	end
end



#programa inicial
puts "Ingrese los valores a calcular\n"
val1 = gets.chomp
val2 = gets.chomp

val1.to_i
val2.to_i
	
	calcular = Calculadora.new(val1,val2)
	calcular.sumar 
	calcular.restar 
	calcular.multiplicar 
	calcular.dividir