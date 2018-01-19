class ClubsController < ApplicationController

	def new
	end

	def create
		@club = current_user.clubs.new(club_params)
		if @club.save
			redirect_to club_path(@club)
		else
			render :new
		end
	end

	def show
		@club = Club.find(params[:id])
	end

	private

	def club_params
		params.require(:club).permit(:name, :description)
	end

end

