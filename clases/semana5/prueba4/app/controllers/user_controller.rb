class UserController < ApplicationController
	def index
		#render: json: {message: "Hola"}
		puts "Hola*****************"
		render nothing: true
	end
end