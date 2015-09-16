class MeetupsController < ApplicationController

	def index
		@meetups = Meetup.all
	end

	def show
		@meetup = Meetup.find(params[:id])
	end

	def new
		@meetup = Meetup.new
	end

	def create
		@meetup = Meetup.new(meetup_params)
		if @meetup.save
			session[:meetup_id] = @meetup.id.to_s	
			redirect_to meetups_path
		else
			render :new
		end
	end

	def edit
		@meetup = Meetup.find(params[:id])
	end

	def update
		@meetup = Meetup.find(params[:id])
		if @meetup.update_attributes(meetup_params)
			redirect_to meetups_path
		else 
			render :edit		
		end
	end

	def destroy
		@meetup = Meetup.find(params[:id])
		@meetup.destroy
		redirect_to meetups_path
	end

	private

	def meetup_params
		params.require(:meetup).permit(:festival, :location, :time)
	end
end

