#clase de time
require 'time'					#=> Instanciamos a la clase Time
t = Time.new					#=> Declaramos la calse time
t.zone							#=> Zona horaria 
t.utc							#=> zona meridiano


def hora_actual
	t = Time.now
	t.strftime "%X"
end

def fecha_actual
	t = Time.now
	t.strftime "%x"
end