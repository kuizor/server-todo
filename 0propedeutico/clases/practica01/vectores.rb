class Sentencias
	def for
		for i in 1..10
			puts "variable es: #{i}"
		end
	end		
	

	def begin #mientras
		$i = 0
		$num = 5
		begin
   			puts("ciclo i = #$i" )
   			$i +=1
		 while $i < $num
		end
	end

	def until
		$i = 0
		$num = 5

		until $i > $num  do
   			puts("ciclo i = #$i" )
   			$i +=1;
		end
	end
	

	def each
		(0..5).each do |i|
   			puts "Value of local variable is #{i}"
		end
	end
	

	def romper_for
		for i in 0..5
   			if i > 2 then
      			break
   			end
   			puts "Value of local variable is #{i}"
		end
	end

	def for_next
		for i in 0..5
   			if i < 2 then
      			next
   			end
   			puts "Value of local variable is #{i}"
		end
	end

	def for_redo
		for i in 0..5
		   if i < 2 then
		      puts "Value of local variable is #{i}"
		      redo
		    end
		end
	end

	def funtion_ramdom
		if rand(2) == 0
			puts "Opcion 1"
		else
			puts "Opcion 2"
		end
	end

	def rompe_begin
		begin
		   do_something # exception raised
		rescue
		   # handles error
		   retry  # restart from beginning
		end
	end

	def area_circulo
		pi = 3.14
		a = 0
		puts "Intruduzca el area del circulo:"
		a = gets.chomp.to_i
		c = (pi * (a ** 2))
		puts "El radio es: " + c.to_s
	end 

	def array
		#nums = Array.[](1, 2, 3, 4,5)
		#nums = Array[1, 2, 3, 4,5]
		names = Array.new(4, "mac")
		puts "#{names}"
	end

	def recorre_array
		digits = Array(0..9)
		puts "#{digits}"
	end

	def muesta_array
		digits = Array(0..9)
		num = digits.at(6)
		puts "#{num}"
	end

	def area_circulo_diam
		pi = 3.14
		a = 0
		puts "Intruduzca el DIAMETRO del circulo:"
		a = gets.chomp.to_i
		c = (pi * a)
		puts "El area es: " + c.to_s
	end
end

p = Sentencias.new()

#p.for
#p.begin
#p.until
#p.each
#p.romper_for
#p.for_next
#p.for_redo
#p.funtion_ramdom
#p.rompe_begin
#p.area_circulo
#p.array
#p.recorre_array
#p.area_circulo_diam
p.