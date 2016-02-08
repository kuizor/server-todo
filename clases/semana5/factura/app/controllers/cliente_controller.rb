class ClienteController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :r_not_found

	def index
		cliente = Cliente.all
		render json:cliente
	end

	def show
		client = Cliente.find(params[:id])
		render json: client
	end

	def create
		c = Cliente.new(permit_params)
		if c.save
			render json:{message: "Todo Bien."}
		else
			render json:{message: "Nada Bien.", errors: c.errors.full_message}
		end
	end
	def update
		c = Cliente.find(params[:id])
		if c.update(permit_params)
			render json:{message: "Todo Bien."}
		else
			render json:{message: "Nada Bien."}
		end
	end
	def destroy
		c = Cliente.find(params[:id])
		if c.destroy
			render json:{message: "Todo Cool"}
		else
			render json:{message: "Malo"}
		end
	end
	private 
	def permit_params
		params.require(:cliente).permit(:nombre,:telefono,:direccion,:rif,:tipo)
	end
	def r_not_found(error)
		render json: {error: error.message}, status: :not_found
	end
end