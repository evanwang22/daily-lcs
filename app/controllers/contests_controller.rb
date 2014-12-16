class ContestsController < ApplicationController
	def view
		@contest = Contest.find(params[:id])
	end

	def show
		@contests = Contest.all

		respond_to do |format|
			format.html {render 'show'}
			format.json	{render json: @contests}
		end
	end

end
