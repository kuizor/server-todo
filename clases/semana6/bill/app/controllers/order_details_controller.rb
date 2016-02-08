class OrderDetailsController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :r_not_found


	def index
		if (a = params[:order_id])
			c = Order.find(a)
			render json: c.order_details
		else
			o = OrderDetail.all
			render json:o
		end
	end

	def show
		o = OrderDetail.find(params[:id])
		render json: o
	end

	def create
		o = OrderDetail.new(permit_params)
		if o.save
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool", errors: o.errors.full_message}
		end
	end
	def update
		o = OrderDetail.find(params[:id])
		if o.update(permit_params)
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool"}
		end
	end
	def destroy
		o = OrderDetail.find(params[:id])
		if o.destroy
			render json:{message: "Its cool"}
		else
			render json:{message: "no Cool"}
		end
	end
	private 
	def permit_params
		params.require(:order).permit(:product_id, :quantity, :order_id)
	end

	def r_not_found(error)
		render json: {error: error.message}, status: :not_found
	end
end