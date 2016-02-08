#clase caero donde almacena las variables
class caero
	def initialize(pass,tipo,ci,monto,saldo)
		@pass = pass
		@tipo = tipo
		@ci = ci
		@monto = monto
		@saldo = saldo
	
	attr_reader :pass, :tipo, :ci, :monto, :saldo
