class ContestsController < ApplicationController
	
  before_action :require_login

	def show
		@contest = Contest.find(params[:id])
	end

	def index
		@contests = Contest.all
		render json: @contests
	end

	def lobby
	end

  private
 
 		# Require logged in user before any actions in this controller
	  def require_login
	    unless current_user
	      redirect_to root_path
	    end
	  end

end
