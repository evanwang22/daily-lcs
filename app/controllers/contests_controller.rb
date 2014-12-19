class ContestsController < ApplicationController
	
	def show
		@contest = Contest.find(params[:id])
	end

	def index
		@contests = Contest.all
		render json: @contests
	end

	def lobby
	end

end
