class FollowsController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :r_not_found
	#rescue_from ActionController::ParameterMissing do
  		#render :nothing => true, :status => 405
  	#	render json:{message: "Parametros malos",params:params}, nothing: true, status: :not_found
	#end

	def index
		if (a = params[:profile_id])
			c = Profile.find(a)
			render json: c.follow
		else
			follow = Follow.all
			render json:follow
		end
	end

	def show
		follow = Follow.find(params[:id])
		render json: follow
	end

	def create
		follow = Follow.new(permit_params)
		if follow.save
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool", errors: follow.errors.full_message}
		end
	end
	def update
		follow = Follow.find(params[:id])
		if follow.update(permit_params)
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool"}
		end
	end
	def destroy
		follow = Follow.find(params[:id])
		if follow.destroy
			render json:{message: "Its cool"}
		else
			render json:{message: "no Cool"}
		end
	end
	private 
	def permit_params
		params.require(:follows).permit(:source_profile,:target_profile)
		#params.require(:follows).permit(:target_profile_id,:source_profile_id)
	end

	def r_not_found(error)
		render json: {error: error.message}, status: :not_found
	end
end