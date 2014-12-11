class HomeController < ApplicationController

	# GET '/''
	def home
		@user = User.new
	end

	# GET '/about'
  def about
  	render nothing: true
  end

end