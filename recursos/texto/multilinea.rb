#------------------Texto multilinea
def multi_linea todo_texto=""
		while (texto = gets) != "\n"
	    	todo_texto << texto
	  	end
  		todo_texto
end