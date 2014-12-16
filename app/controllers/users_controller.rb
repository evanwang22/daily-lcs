class UsersController < ApplicationController
  protect_from_forgery

	# POST '/users' (API)
  def create
  	@user = User.create(user_params)
    session[:current_user_id] = @user.id


    respond_to do |format|
      format.json { render status: 200, :json => {
      :message => "Success!"}}
      format.html { redirect_to lobby_path }
    end
  	

  end

  private

	# Strong parameters allowing assignment of email & password
	def user_params
		params.require(:user).permit(:email, :password, :username)
	end

end
