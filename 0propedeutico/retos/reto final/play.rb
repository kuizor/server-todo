#metodo play

def play(ma,x,y) #muestra donde cae la pieza
	acum = 0
	varI = rand(0...x)
	varQ = rand(0...y)
	for i in 0...ma.length
		print "["
		for q in 0...ma[i].length
			if ( i == varI && q == varQ)
				punt = ma[i][q]
				ma[i][q] = '·'
			end
			print " #{ma[i][q]}"
		end
		puts "]\n"
	end			
end