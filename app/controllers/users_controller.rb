class UsersController < ApplicationController

	# POST '/users' (API)
  def create

  	@user = User.create(params[:user])
  	
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
