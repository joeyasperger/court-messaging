class HearingController < ApplicationController
	before_action :authenticate_admin!
	def new
		@curr_user = current_admin

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

		message = Message.new(hearing: hearing, sent: false)
		message.text = "#{user.firstname}, you are scheduled for a court hearing on #{hearing.date.strftime("%-m/%-d at %I:%M %p")} at #{hearing.location}."
		message.time = hearing.date - 24 * 3600
		message.save

		redirect_to '/hearings/new'
	end

end
