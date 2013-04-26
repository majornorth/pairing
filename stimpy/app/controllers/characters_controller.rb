class CharactersController < ApplicationController
	def index
		@characters = Character.all
		@Ren = Character.find_by_name("Reginald")
	end	

	def new
		@character = Character.new
	end

	def create
		@character = Character.new(params[:character])
		@character.save
		redirect_to characters_path
	end

	def edit
		@character = Character.find(params[:id])
	end

	def update
		@character = Character.find(params[:id])
		@character.update_attributes(params[:character])
		redirect_to characters_path
	end

	def destroy
		Character.find(params[:id]).destroy
		redirect_to characters_path
	end
end
