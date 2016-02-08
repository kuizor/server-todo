class OrdersController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :r_not_found


	def index
		if (a = params[:customer_id])
			c = Customer.find(a)
			if c.orders == []
				render json: {message: "Nil"}
			else
				render json: c.orders
			end
		else
			o = Order.all
			render json:o
		end
	end
	#def filter_index
	#	get 'orders', to 'orders#filter_index' 
	#end

	def show
		o = Order.find(params[:id])
		render json: o
	end

	def create
		o = Order.new(permit_params)
		if o.save
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool", errors: o.errors.full_message}
		end
	end
	def update
		o = Order.find(params[:id])
		if o.update(permit_params)
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool"}
		end
	end
	def destroy
		o = Order.find(params[:id])
		if o.destroy
			render json:{message: "Its cool"}
		else
			render json:{message: "no Cool"}
		end
	end
	private 
	def permit_params
		params.require(:order).permit(:customer_id)
	end

	def r_not_found(error)
		render json: {error: error.message}, status: :not_found
	end
end