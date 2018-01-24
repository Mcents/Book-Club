class ClubsController < ApplicationController

	def new
	end

	def create
		@club = current_user.clubs.new(club_params)
		@club.creator = current_user.username if current_user
		if @club.save
			redirect_to club_path(@club)
		else
			render :new
		end
	end

	def index
		@club = Club.all
	end

	def show
		@club = Club.find(params[:id])
	end

	def join
		@club = Club.find(params[:id])
		current_user.clubs << @club
		redirect_to @club
	end

	private

	def club_params
		params.require(:club).permit(:name, :description, :creator)
	end

end

