class ProductsController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :r_not_found


	def index
		p = Product.all
		render json:p
	end

	def show
		p = Product.find(params[:id])
		render json: P
	end

	def create
		p = Product.new(permit_params)
		if p.save
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool", errors: p.errors.full_message}
		end
	end
	def update
		p = Product.find(params[:id])
		if p.update(permit_params)
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool"}
		end
	end
	def destroy
		p = Product.find(params[:id])
		if p.destroy
			render json:{message: "Its cool"}
		else
			render json:{message: "no Cool"}
		end
	end
	private 
	def permit_params
		params.require(:product).permit(:name,:price,:quantity)
	end

	def r_not_found(error)
		render json: {error: error.message}, status: :not_found
	end
end