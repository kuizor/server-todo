class UsersController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :r_not_found
	rescue_from ActionController::ParameterMissing do
  		#render :nothing => true, :status => 405
  		render json:{message: "Parametros malos",params:params}, nothing: true, status: 334
	end

	def index
		user = User.all
		render json: user
	end

	def show
		user = User.find(params[:id])
		render json: user
	end

	def create
		user = User.new(permit_params)
		if User.save
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool", errors: User.errors.full_message}
		end
	end
	def update
		user = User.find(params[:id])
		if User.update(permit_params)
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool"}
		end
	end
	def destroy
		user = User.find(params[:id])
		if User.destroy
			render json:{message: "Its cool"}
		else
			render json:{message: "no Cool"}
		end
	end
	private 
	def permit_params
		params.require(:user).permit(:login,:password, :email)
	end

	def r_not_found(error)
		render json: {error: error.message}, status: :not_found
	end
end