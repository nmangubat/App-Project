class MeetupsController < ApplicationController

	def index
		@meetups = Meetup.all
	end

	def show
		@meetup = Meetup.find(params[:id])
	end

	def new
		@festival = Festival.find(params[:festival_id]) 
		@meetup = Meetup.new
	end

	def create
		@festival = Festival.find(params[:festival_id])

		@meetup = @festival.meetups.new({
			time: meetup_params[:time],
			location: meetup_params[:location],
			festival_id: @festival.id,
			user_id: current_user.id
		})

		if @meetup.save
			# session[:meetup_id] = @meetup.id.to_s	
			redirect_to festival_meetups_path(@festival)
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
			redirect_to festival_meetups_path(@meetup.festival)
		else 
			render :edit		
		end
	end

	def destroy
	   meetup = Meetup.find(params[:id])
	   Comment.where({meetup_id: meetup.id }).destroy_all
	   Meetup.destroy( meetup.id )
	   redirect_to festival_meetups_path(@meetup.festival)


	end

	private

	def meetup_params
		params.require(:meetup).permit(:location, :time)
	end
end

