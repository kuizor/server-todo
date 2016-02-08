#moneda
def moneda
	mo = rand(0..1)
	if (mo == 0)
		return 0
	elsif (mo == 1)
		return 1
	end
end
#metodo que retorna cero(0) o uno(1)
puts moneda