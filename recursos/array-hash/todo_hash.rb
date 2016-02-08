#Todo Hash
parametros = {}
parametros[:llave]=valor
puts parametros => {:llave=>valor}

#hash.[key]=value

#hash.store(key, value)						=> cambia los valores de la llave
#hash.sort									=> muestra el hash ordenado
#hash.size									=> muestra el tamaño del hash
#hash.shift									=> remueve un aleatorio del hash
#hash.keys									=> devuelve las llaves
#hash.invert								=> crea un nuevo hash he invierte las llaves con los valores

def declarar_hash
	hash = {}
	#hash = Hash.new("")
	#H = Hash["a" => 100, "b" => 200]
end

def llenar_hash(hash,llave,dato)
	llave.to_sym
	hash[llave] = dato
	#options = { font_size: 10, font_family: "Arial" }
	return dato
end

def ver_llaves(hash)
	hash.keys
end

def recorre_hash(hash)
	hash.each do |llave,valor| 
		puts "llave: #{llave}"
		puts "valor: #{valor}"
	end
end

def busca_valor_por_llave(hash,llave)
	hash.each do |k,valor|
		if(k==llave)
			puts "el valor es:#{valor}"
		end
	end
end

def busca_valor_por_valor(hash,valor)
	hash.each do |k,val|
		if(val==valor)
			puts "La Key es:#{k}"
		end
	end
end

def llena_array_con_hash(hash)
	@array = []
	@array.push(hash)
	return @array
end

def ramdom_hash(hash)
	
end

#	def consultar_articulo					#crear un hash con array
#		@digg["data"]["feed"].each do |k|
#			@articulo[@con][0] = Time.at(k["date"])
#			@articulo[@con][1] = k["content"]["author"]
#			@articulo[@con][2] = k["content"]["title"]
#			@con += 1
#		end
#	end
a = {}
