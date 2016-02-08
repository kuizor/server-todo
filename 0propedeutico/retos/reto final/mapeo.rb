#mapeo de matrices

#pos4 = punto de configuracion
#pos3 = (i-1)(i+1)(q-1)(q+1)[(i-1)(q-1)] [(i-1)(q+1)] [(i+1)(q-1)] [(i+1)(q+1)]
#pos2 = (i-2)(i+2)(q-2)(q+2)[(i-1)(q-2)] [(q-2)(i+1)] [(q-2)(i-2)] [(q-1)(i-2)] [(q+2)(i-1)] [(q+2)(i-2)] [(q+1)(i-2)] [(i+2)(q-1)] [(i+2)(q-2)] [(i+2)(q+1)] [(i+1)(q+2)] [(i+2)(q+2)]
#pos1 = (i-3)(i+3)(q-3)(q+3)[(i-1)(q-3)] [(i-1)(q+3)] [(i+1)(q-3)] [(i+1)(q-3)] [(i+1)(q+3)] [(i+2)(q+3)] [(i+2)(q+3)] [(i+3)(q-1)] [(i+3)(q+1)] [(i+3)(q-2)] [(i+3)(q-2)] [(i+3)(q-3)] [(i+3)(q+3)] [(i-2)(q-3)][(i-2)(q+3)][(i-3)(q-1)][(i-3)(q+1)][(i-3)(q-2)][(i-3)(q+2)][(i-3)(q-3)][(i-3)(q+3)]

# m[x][y] == m[i-1][q] || m[x][y] == m[i+1][q] || m[x][y] == m[i][q-1] || m[x][y] == m[i][q+1] || m[x][y] == m[i-1][q-1] || m[x][y] == m[i-1][q+1]  || m[x][y] == m[i+1][q-1] || m[x][y] == m[i+1][q+1])
m = Array.new(10) {Array.new(10)}

px = 9
py = 0

for i in 0...m.length
	print "["
	for q in 0...m.length
		if (q == px && i == py)
			m[i][q] = 4
		end
		if ((i==py && q==px-1)||(i==py && q==px+1)||(i==py-1 && q==px-1)||
			(i==py-1 && q==px)||(i==py-1 && q==px+1)||(i==py+1 && q==px-1)||
			(i==py+1 && q==px)||(i==py+1 && q==px+1))
			m[i][q] = 3
		end
		if ((i==py && q==px-2)||(i==py+2 && q==px)||(i==py && q==px+2)||
			(i==py-1 && q==px-2)||(i==py+1 && q==px-2)||(i==py-2 && q==px-2)||
			(i==py-2 && q==px+2)||(i==py+2 && q==px-2)||(i==py+2 && q==px-1)||
			(i==py+2 && q==px+2)||(i==py+1 && q==px+2)||(i==py+2 && q==px+1)||
			(i==py-2 && q==px+1)||(i==py-2 && q==px-1)||(i==py-2 && q==px)||(i==py-1 && q==px+2))
			m[i][q] = 2
		end
		if ((i==py && q==px-3)||(i==py+3 && q==px)||(i==py && q==px+3)||
			(i==py-1 && q==px-3)||(i==py+1 && q==px-3)||(i==py-3 && q==px-3)||
			(i==py-3 && q==px+3)||(i==py+3 && q==px-3)||(i==py+3 && q==px-1)||
			(i==py+3 && q==px+3)||(i==py+1 && q==px+3)||(i==py+3 && q==px+1)||
			(i==py-3 && q==px+1)||(i==py-3 && q==px-1)||(i==py-3 && q==px)||
			(i==py-1 && q==px+3)||(i==py-3 && q==px-2)||(i==py-3 && q==px+2)||
			(i==py-2 && q==px+3)||(i==py+2 && q==px+3)||(i==py+3 && q==px-2)||
			(i==py+3 && q==px+2)||(i==py+2 && q==px-3||(i==py-2 && q==px-3)))
			m[i][q] = 1
		end

		if(m[i][q] == nil)
			m[i][q] = 0
		end	
		print " #{m[i][q]}"
	end
	puts "]\n"
end