#Escriba el código Ruby que muestre la cantidad de números enteros impares
#entre 1 y 200.
i = 1
while (i<=200)
	val = i % 2
	if (val == 1)
		puts "#{i} es par"
	end
	i+=1
end	