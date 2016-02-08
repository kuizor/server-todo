class BillsController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :render_404, :render_500

	def index
		bills = Bill.all
		render json:bills.as_json(include =>{:bill_details {:only => :quantity}})
		#params.require(:bill).permit(:client,bill_details.attributes: [:quantity])
	end

	def show
		bills = Bill.find(params[:id])
		render json: bills
	end

	def create
		bills = Bill.new(permit_params)
		if bills.save
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool", errors: bills.errors.full_message}
		end
	end
	def ubillsdate
		bills = Bill.find(params[:id])
		if bills.update(permit_params)
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool"}
		end
	end
	def destroy
		bills = Bill.find(params[:id])
		if bills.destroy
			render json:{message: "Its cool"}
		else
			render json:{message: "no Cool"}
		end
	end
	private 
	def permit_param
		params.require(:Bill).permit(:name,:billsrice,:quantity)
	end

	def r_not_found(error)
		render json: {error: error.message}, status: :not_found
	end
end