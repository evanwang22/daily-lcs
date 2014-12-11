class UsersController < ApplicationController
  protect_from_forgery

	# POST '/users' (API)
  def create
  	@user = User.create(user_params)
  	
  	# Success response
  	render status: 200, :json => {
  		:message => "Success!"
  	}

  end

  private

  	# Strong parameters allowing assignment of email & password
  	def user_params
  		params.require(:user).permit(:email, :password, :username)
  	end

end
