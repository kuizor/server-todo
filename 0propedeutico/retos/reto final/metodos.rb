#metodos y llamados

#Definicion del metodo y llamado
def principal
	puts "hola"
end



#Deficinion del metodo y llamado con return
def ppalreturn(pepe)
	a = "hola "+pepe
	return a
end

#metodo donde se aplica el return en pleno proceso y sale del metodo
def player(nombre)
	a = Array.new(10)
	for i in 0...a.length
		if(a[i]==nil)
			a[i] = nombre
			return a[i]+' coco'
		end
	end
end

#metodo donde le pasas variables y matrices
def player2(nombre,b)
	for i in 0...b.length
		if(b[i]==nil)
			b[i] = nombre
			#i += 1	
			return "#{b}"
		end
	end
end
#a = Array.new(10)


#main del metodo player2
a = []
b=0
while (b<10) do
	puts "introduzca nombre"
	nom = gets.chomp

	puts (player2(nom,a))
	b += 1
end


#puts (player('pepe'))
#principal
#puts (ppalreturn('carlos'))
