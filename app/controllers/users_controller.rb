class UsersController < ApplicationController

	# GET '/''
	def new
		@user = User.new
	end

	# POST '/users' (API)
  def create

  	@user = User.create(params[:user])
  	
  	# Success response
  	render status: 200, :json => {
  		:message => "Success!"
  	}

  end

  private

  	def user_params
  		params.require(:user).permit(:email, :password)
  	end

end
