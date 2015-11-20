class HearingController < ApplicationController

	def new

	end

	def create
		user = User.find_by_id_number(params[:id_number])
		if user == nil
			user = User.new(params.permit(:firstname, :lastname, :id_number, :cell_number))
			user.court_id = 1
			user.save
		end

		hearing = Hearing.new(params.permit(:location, :date))
		hearing.user_id = user.id
		hearing.save

		redirect_to '/hearings/new'
	end

end
