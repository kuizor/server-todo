class FactController < ApplicationController
	def index
		factura = Fact.all
		render json:factura
	end

	def show
		factura = Fact.find(params[:id])
		render json: factura
	end

	def create
		f = Fact.new(permit_params)
		if f.save
			render json:{message: "Todo Bien."}
		else
			render json:{message: "Nada Bien.", errors: f.errors.full_message}
		end
	end
	def update
		f = Fact.find(params[:id])
		if f.update(permit_params)
			render json:{message: "Todo Bien."}
		else
			render json:{message: "Nada Bien."}
		end
	end
	def destroy
		f = Fact.find(params[:id])
		if f.destroy
			render json:{message: "Todo Cool"}
		else
			render json:{message: "Malo"}
		end
	end
	private 
	def permit_params
		params.require(:factura).permit(:fatura,:telefono,:direccion,:rif,:tipo)
	end
	def r_not_found(error)
		render json: {error: error.message}, status: :not_found
	end
end