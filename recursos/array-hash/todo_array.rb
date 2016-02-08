#todo Arrays


def declarar_array	#===========================================		FORMAS PARA DECLARAR UN ARRAY
	a = []
	a = Array.new 					#=> a = [] vacio
	a = Array.new(3) 				#=> a = [nil,nil,nil] con 3 espacios
	a = Array.new(3,pepe)			#=> a = [pepe,pepe,pepe]
	a = Array.new(3){Array.new(3)}	#=> a = [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]] matriz de 3x3
	a = (1..20).to_a
end

def acceder_array	#===========================================		FORMAS DE ACCEDER A UN ARRAY
	a = [1,2,3,4,5]					#=> array
	a[2]							#=> Array en la posicion 2 (print 3)
	a[100]							#=> nil
	a[-4]							#=> 2
	a[2, 3] 						#=> [3, 4, 5]
	a[1..4] 						#=> [2, 3, 4, 5]
	a[1..-3] 						#=> [2, 3, 4]
	a.at(0)							#=> 1	seleccionamos por indice el item del array
	a.first							#=> 1
	a.last							#=> ultimo
	a.take(3)						#=> [1,2,3]
	a.drop(3)						#=> [3,4,5]
end

def tamaño_array	#============================================		FORMAS PARA SABER EL TAMAÑO
	b = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']
	b.length 						#=> 5
	b.count 						#=> 5
end

def busqueda_array	#============================================		BUSQUEDA DENTRO DEL ARRAY
	b.include?('Konqueror') 		#=> false
end

def agregar_array	#============================================		AGREGANDO ITEMS AL ARRAY
	a = [1, 2, 3, 4]
	a.push(5) 						#=> [1, 2, 3, 4, 5]
	a << 6    						#=> [1, 2, 3, 4, 5, 6]
	a.insert(3,'pepe')				#=> [1,2,3,'pepe',4,5,6]
	a.unshift(0)					#=> [0,1,2,3,'pepe',4,5,6] agrega el cero de primero
	a.insert(3,'coco','maiz')		#=> [0,1,2,3,'coco','maiz','pepe',4,5,6]
	a.push('carlos')				#=> [0,1,2,3,'coco','maiz','pepe',4,5,6,'carlos']
end

def borrar_array	#============================================		REMOVIENDO ITEM DEL ARRAY
	a = [1,2,3,4,5,6]
	a.pop							#=> [1,2,3,4,5]
	a.shift							#=> [2,3,4,5,6]
	a.delete_at(2)					#=> [1,2,3,5,6]
	a.delete(2)						#=> [1,3,4,5,6]
	a.pop(3)						#=> [1,2,3,5,6] #sacamos el ultimo valor del arreglo
end

def compactar_array	#============================================		COMPACTAR ARRAY
	a = [1,2,'pepe',nil,4,nil,4,2]
	a.compact 						#=> [1,2,'pepe',4,4,2]
	a.compact!						#=> compacta modificando la referencia en memoria
	a.uniq							#=> [1,2,'pepe',4]
end

def each_array		#============================================		EACH
	a = [1,2,3,4,5]
	#a.each {|a| print a -= 10, " \n"}
	a.each {|a| print a * 3, " \n"}	#=> 3,6,9,12,15 sin modificar el array
	print "#{a}"
end

def map_array		#============================================		MAP
	a = [1,2,3,4,5]	
	a.map{|a| 2*a}					#=>[2, 4, 6, 8, 10]
	a                   			#=> [1, 2, 3, 4, 5]
	a.map! { |a| a**2 } 			#=> [1, 4, 9, 16, 25] con el '!' modifica la referencia de memoria
	a                   			#=> [1, 4, 9, 16, 25]
end

def array_no_destructivo#========================================		ARRAY-NO-DESTRUCTIVO
	a = [1, 2, 3, 4, 5, 6]
	a.select { |a| a > 3 }     		#=> [4, 5, 6]
	a.reject { |a| a < 3 }     		#=> [3, 4, 5, 6]
	a.drop_while { |a| a < 4 } 		#=> [4, 5, 6]
	a                          		#=> [1, 2, 3, 4, 5, 6]
end

def array_destructivo#===========================================		ARRAY DESTRUCTIVO
	a = [1, 2, 3, 4, 5, 6]
	a.delete_if { |a| a < 4 } 		#=> [4, 5, 6]
	a                         		#=> [4, 5, 6]

	a = [1, 2, 3, 4, 5, 6]
	a.keep_if { |a| a < 4 } 		#=> [1, 2, 3]
	a                       		#=> [1, 2, 3]
end

def sumar_array		#============================================		SUMA DE ARRAY
	a = [1,2,3]
	b = [4,5,6]
	c = a + b
	print "a:#{a} b:#{b}"
	print "c:#{c}"
end

def prueba
	a = [1,2,3,4,5]	
	a.map{|a| 2 * a}				#=>[2, 4, 6, 8, 10]
	a                   			#=> [1, 2, 3, 4, 5]
	a.map! { |a| a**2 } 			#=> [1, 4, 9, 16, 25] con el '!' modifica la referencia de memoria
	a                   			#=> [1, 4, 9, 16, 25]
end

def desordena_array
	a = (1..20).to_a.shuffle
	puts a.to_s
end

def ordena_array
	a = [2,5,7,1,4,3,8,9]
	a.sort!
	puts "#{a}"
end

def busca_aleatorio_array
	a = [2,5,7,1,4,3,8,9]
	puts "#{a}"
	puts a.sample
end

def ordena_alrevez
	a = [1,2,3,4,5,6]
	a.reverse!
	puts "#{a}"
end

def rango_array
	a = (1..10).to_a
	puts "#{a}"
	#---------------------
	b = ('cara'..'care').to_a
	puts "#{b}"
end



def define_arreglo
	(0...@digg["data"]["feed"].length).each{|i| @articulo[i]=[]}
end