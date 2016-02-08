class Carpa
​
	attr_accessor :capacidad, :altura, :precio_alquiler
	def  initialize
		@capacidad = [10000, 12000, 15000]
		@altura = 10
		@precio_alquiler = [22000, 37000, 80000]
		@capacidad = @capacidad[rand(@capacidad.length)]
		@precio_alquiler = @precio_alquiler[rand(@precio_alquiler.length)]
	end
end
​
class Circo < Carpa
​
	attr_accessor :precio_entrada, :presupuesto, :sueldo_payaso, :suma_presupuesto
	def  initialize
		super()
		@precio_entrada = 5
		@presupuesto = 50000
		@sueldo_payaso = 1000
		@suma_presupuesto = suma_presupuesto
    puts "#{@precio_alquiler}" 
  end
    
  def funciona
    puts "#{@precio_alquiler}" 
    @suma_presupuesto = (@precio_alquiler + @sueldo_payaso)
    puts "#{@suma_presupuesto}" 
  end
end