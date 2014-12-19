class HomeController < ApplicationController

	# GET '/''
	def home
		if current_user
			redirect_to lobby_path
		else
			redirect_to welcome_path
		end
	end

	def welcome
		if current_user
			redirect_to lobby_path
		else
			@user = User.new
		end
	end

	# GET '/about'
 	def about
  		render nothing: true
 	end

end