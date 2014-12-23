class EntriesController < ApplicationController

	# search entries by given params
	# JSON
	def index

		@entries = Entry.all

		@entries = @entries.by_contest(params[:contest_id]) if params[:contest_id].present? 
		@entries = @entries.by_contest(params[:user_id]) if params[:user_id].present? 
		@entries = @entries.by_contest(params[:lineup_id]) if params[:lineup_id].present?

		render json: @entries 

	end



	private

		# Not really sure if we need this if we never POST
		# def user_params
		# 	params.require(:user).permit(:email, :password, :username)
		# end

end
