#clase Guzzo


#dguzzo@academiahack.com.ve



#carro = {"modelo" => "mustang", :placa => "HACK", cauchos: 4}
=begin
Metodos:
​
.methods = todos los metodos disponibles
.shuffle = Ordena todos los elementos de forma aleatoria de un array
.delete_if = Elimina los elementos segun una condicion
.flatten! = Pone todos los elementos del array en el mismo nivel
.map! = Altera todos los elementos del array 
.reverse = Invierte el arreglo
.rotate = Mueve los elementos del arreglo X posiciones a la derecha
.each = 
=end
​
un_hash_loco = {hash: {array_de_hash: []}, 
                hash_superloco: {array_superloco: []}}
​
hack = {"carros" => ["optra","aveo", "turpial"]}
hash2 = {}
​
hash = {normal_array: [15,25,30,10,11,18], 
        flatten_array: [15,[25,[[12]],30],10,[11,[50,6],78],18],
        map_array: [15,25,30,10,11,18],
        rotate_array: [15,25,30,10,11,18],
        shuffle_array: [15,25,30,10,11,18],
        reverse_array: [15,25,30,10,11,18],
        each_array: [15,25,30,10,11,18]}
​
hash2[:normal_array] = hash[:normal_array]
​
hash2[:flatten_array] = hash[:flatten_array].flatten
​
hash2[:map_array] = []
hash[:map_array].map do |element|
  hash2[:map_array] << element += element
end
​
hash2[:rotate_array] = hash[:rotate_array].rotate
​
hash2[:shuffle_array] = hash[:shuffle_array].shuffle
hash2[:reverse_array] = hash[:reverse_array].reverse
​
hash2[:each_array] = []
​
hash[:each_array].each do |element|
  hash2[:each_array].push(element)
end
​
=begin
print hash[:each_array]
print hash2[:each_array]
puts ""
=end
​
​
#-------------------------------------------------------------------
#Ejercicio de practica
=begin
Ordenar el array_uno
Tomar los primeros 4 elementos del array_dos
Ordenar de orden aleatorio el array_tres
Multiplicar elemento por elemento en el array_cuatro
Mover 2 espacios a la izquierda cada elemento del array_cinco
Invertir el array_seis
Eliminar todos los numeros impares del array_siete
Ordenar el array_ocho de menor a mayor
​
Deben hacer un segundo hash, llamado practice_hash2, que tenga "llave/key" del mismo nombre al cual le aplicando el metodo
debe ser un hash sencillo, si necesidad de ser similar al primero
​
Ej: practice_hash2 = {array_uno: "Blah", array_dos: "Blah", array_tres: "Blah"}
=end
​
​
practice_hash = {array_de_hashes: [{array_uno:[15,18,9,9,30,31]},
                                   {array_dos:[5,5,6,6,9,8,7,4,15]},
                                   {array_tres:[987,987,82,6,91]}], 
                 array_de_hashes2: [{array: [{array_cuatro: [12,12,12,12]},
                                            {array_cinco: [50,52,51,41,7]},
                                            {array_seis: [99,97,78,4,15,15,48,48,7]}
                                           ]},
                                   {array2: [{array_siete: [77,87,84,55,418,5120,147]},
                                             {array_ocho: [99,66,88,44,77,11,22]}
                                            ]
                                   }
                                   ]
                }