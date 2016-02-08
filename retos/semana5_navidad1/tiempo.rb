class Tiempo
	def hora
		t = Time.now
		@hora = t.strftime "%X"
		return @hora
	end
	def fecha
		t = Time.now
		@fecha = t.strftime "%x"
		return @fecha
	end
end