class UsersController < ApplicationController
  def index
    @users = User.order("created_at DESC")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user]) 
    @user.save
    redirect_to users_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to users_path
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end
end
