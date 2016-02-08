#Escriba el código Ruby que muestre la cantidad de números enteros pares
#entre 1 y 200.
i = 1
while (i<=200)
	val = i % 2
	if (val == 0)
		puts "#{i} es par"
	end
	i+=1
end	