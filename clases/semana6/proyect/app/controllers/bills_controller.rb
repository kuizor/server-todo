class BillsController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :r_not_found


	def index
		bill = Bill.all
		render json:bill
	end

	def show
		bill = Bill.find(params[:id])
		render json: bill
	end

	def create
		bill = Bill.new(permit_params)
		if bill.save
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool", errors: bill.errors.full_message}
		end
	end
	def update
		bill = Bill.find(params[:id])
		if bill.update(permit_params)
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool"}
		end
	end
	def destroy
		bill = Bill.find(params[:id])
		if bill.destroy
			render json:{message: "Its cool"}
		else
			render json:{message: "no Cool"}
		end
	end
	private 
	def permit_params
		params.require(:bill).permit(:name,:rif,:phone, :address, :total)
	end

	def r_not_found(error)
		render json: {error: error.message}, status: :not_found
	end
end