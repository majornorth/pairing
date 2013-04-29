class ActivitiesController < ApplicationController
	def index
		@activities = Activity.all
	end
	
	def new
		@activity = Activity.new
	end

	def create
		@activity = Activity.new(params[:activity])
		@activity.save
		redirect_to activities_path
	end

	def edit
		@activity = Activity.find(params[:id])
	end

	def update
		@activity = Activity.find(params[:id])
		@activity.update_attributes(params[:activity])
		redirect_to activities_path
	end

	def destroy
		Activity.find(params[:id].destroy)
		redirect_to activities_path
	end	
end
