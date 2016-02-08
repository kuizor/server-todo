=begin
def unir_array(a)
	b = []
	a.each do |k|
		b[k] = a[k] * 2
		puts "#{b[k]}"
	end
end

def ppal
	a = [5,2,3,4,5]
	unir_array(a)
end

ppal
=end


def metodo_map
	arr = [1,2,3,4,5]
	arr2 = arr.map { |elem| elem * 2}
	puts "A1:#{arr} A2:#{arr2}"
end

def metodo_map_tocando_referencias
	arr = [1,2,3,4,5]
	arr2 = arr.map! { |elem| elem * 2}
	puts "A1:#{arr} A2:#{arr2}"
end


#=================================================eercicio

def multiplca_par
	arr = [1,2,3,4,5]
	arr2 = arr.map { |e| e % 2 == 0 ? e*2 : e}
	puts "A1:#{arr} A2:#{arr2}"
end
def select
	arr = [1,2,3,4,5]
	arr2 = arr.select { |e| e * 2 if e % 2 == 0}
	puts "A1:#{arr} A2:#{arr2}"
end

def select2
	arr = [1,2,3,4,5]
	arr2 = arr.select { |k| k%2 == 0}.map{|k| k * 2}
	puts "A1:#{arr} A2:#{arr2}"
end

def select3
	arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	arr2 = arr.select{|k| k%2 == 1}.select{|k| k%5 == 0}.map{|k| k**2}
	puts "A1:#{arr} A2:#{arr2}"
end

def inject
	a = (1..100).to_a.inject(:+)
	puts "#{a}"
end

def join
	a = ["Hola","como","estas"]
	puts a.join(" ")
end
#============================eercicio==============
#========================================eercicios====================
#crear un arreglo de 20 numeros random / 1..100.
#1)numero de pares
#2)numero de impares
#3)si un numero PAR tiene correspondencia con un indice par
#4)luego buscar numero 1..100, si existe, en que posicion esta..
#despinoza@academiahack.com.ve

def eercicio
	a = Array.new(20)
	for i in 0..20
		a[i] = rand(1..100)
	end
	puts "#{a}"
	b= a.select{|k| k%2 == 0}
	puts "Pares #{b} "
	c= a.select{|k| k%2 == 1}
	puts "Impares #{c}"
	d = a.select{|k| k%2 == 0 && a.find_index(k)%2 == 0 && a.find_index(k)>0}
	puts "Numeros PAR que corresponde con el indice #{d}"
	op	 ="s" 
	while op == "s" do
		puts "Array #{a}"
		puts "Introduzca numero a buscar"
		num = gets.chomp.to_i
		var = a.select{|k| k==num}
		puts "#{var}"
		#	puts "El numero existe"
		#else
		#	puts "El numero no existe"
		#end
	end
end

eercicio