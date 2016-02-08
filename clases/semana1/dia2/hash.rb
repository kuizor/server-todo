def array(h1,indice, palabra)
		h1[indice] = palabra
end

def size(hash)
	hash.size
end

def mostrar(hash)
	hash.keys.each do |k|
		puts "Indice: '#{k}'"
		puts "Definicion = #{hash[k]}"
		puts "______________________"
	end
end

def ppal
	h1 = {}
	op = "s"
	while (op == "s")
		puts "Indice"
		indice = gets.chomp.to_sym
		#ind = gets.chomp.to_s
		#indice = ":" + ind
		puts "Palabra"
		sms = gets.chomp
		array(h1,indice,sms)
		puts "#{h1}"
		op = gets.chomp
	end
	#puts size(h1)
	puts mostrar(h1)
end



def clase
	a = {}

	a[:hola] = "Esto es un saludo"
	a[:chao] = "Esto es una despedida"
	a[:otra] = "Esto es otra palabra"

	a.keys.each do |k|
		puts "Palabra #{k}"
		puts "Definicion #{a[k]}"
		puts "__________________"
	end
end

ppal