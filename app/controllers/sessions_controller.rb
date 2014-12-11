class SessionsController < ApplicationController

	# Creates a new user session
  def create
    # user emails are unique so we take the first object that matches
    user = User.where(:email => params[:user][:email]).first
    # if user passes authentication
    if user && user.authenticate(params[:user][:password])
      session[:current_user_id] = user.id
      redirect_to contests_path
    else
    	# error path
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

	private
  	# Strong parameters allowing assignment of email & password
  	def user_params
  		params.require(:user).permit(:email, :password)
  	end

end
