# Generar una matriz de dimension 10x10 de numeros aleatorios
# e imprimir su diagonal principal (8min)

# Genera la matriz de aleatorios
m = []
for i in 0..9 do
	m[i] = []
	for j in 0..9 do
		m[i][j] = rand(100)
	end
end

# Muestra la matriz generada
for i in 0..m.length do
	puts m[i].to_s
end

# Muestra la diagonal principal
puts "Diag. Ppal:"
for i in 0..m.length-1 do
	print m[i][i].to_s + " "
end
puts