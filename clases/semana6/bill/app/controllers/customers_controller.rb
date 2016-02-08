class CustomersController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :r_not_found


	def index
		cust = Customer.all
		render json:cust
	end

	def show
		cust = Customer.find(params[:id])
		render json: cust
	end

	def create
		cust = Customer.new(permit_params)
		if cust.save
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool", errors: cust.errors.full_message}
		end
	end
	def update
		cust = Customer.find(params[:id])
		if cust.update(permit_params)
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool"}
		end
	end
	def destroy
		cust = Customer.find(params[:id])
		if cust.destroy
			render json:{message: "Its cool"}
		else
			render json:{message: "no Cool"}
		end
	end
	private 
	def permit_params
		params.require(:customer).permit(:name,:lastname,:phone, :address)
	end

	def r_not_found(error)
		render json: {error: error.message}, status: :not_found
	end
end