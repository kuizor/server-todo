class ProfilesController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :r_not_found


	def index
		if (a = params[:user_id])
			c = User.find(a)
			render json: c.profile
		else
			prof = Profile.all
			render json: prof
		end
	end

	def show
		profile = Profile.find(params[:id])
		render json: profile
	end

	def create
		profile = Profile.new(permit_params)
		if Profile.save
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool", errors: profile.errors.full_message}
		end
	end
	def update
		profile = Profile.find(params[:id])
		if profile.update(permit_params)
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool"}
		end
	end
	def destroy
		profile = Profile.find(params[:id])
		if profile.destroy
			render json:{message: "Its cool"}
		else
			render json:{message: "no Cool"}
		end
	end
	private 
	def permit_params
		params.require(:profile).permit(:login,:password, :email)
	end

	def r_not_found(error)
		render json: {error: error.message}, status: :not_found
	end
end