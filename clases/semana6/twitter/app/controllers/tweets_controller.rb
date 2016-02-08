class TweetsController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :r_not_found


	def index
		if (a = params[:user_id])
			c = Profile.find(a)
			render json: c.tweets
		else
			tweets = Tweet.all
			render json:tweets
		end
	end

	def show
		tweet = Tweet.find(params[:id])
		render json: tweet
	end

	def create
		tweet = Tweet.new(permit_params)
		if tweet.save
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool", errors: tweet.errors.full_message}
		end
	end
	def update
		tweet = Tweet.find(params[:id])
		if tweet.update(permit_params)
			render json:{message: "Its cool"}
		else
			render json:{message: "No cool"}
		end
	end
	def destroy
		tweet = Tweet.find(params[:id])
		if tweet.destroy
			render json:{message: "Its cool"}
		else
			render json:{message: "no Cool"}
		end
	end
	private 
	def permit_params
		params.require(:tweet).permit(:login,:password, :email)
	end

	def r_not_found(error)
		render json: {error: error.message}, status: :not_found
	end
end