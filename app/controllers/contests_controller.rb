class ContestsController < ApplicationController
	
  before_action :require_login

  # Maybe we should allow some of these routes to have multiple possible
  # formats? (i.e. respond_to do blocks)

  # information for one contest. 
  # Browser render for the contest.
	def show
		@contest = Contest.find(params[:id])
	end

	# listing of all contests. 
	# JSON
	def index
		@contests = Contest.all
		render json: @contests
	end

	# browser render for lobby
	def lobby
	end

  private
 
 		# Require logged in user before any actions in this controller
	  def require_login
	    unless current_user
	      redirect_to root_path
	    end
	  end

	  # Not really sure if we need this if we're never posting
	  #  def contest_params
		# 	params.require(:contest).permit(:email, :password, :username)
		# end

end
