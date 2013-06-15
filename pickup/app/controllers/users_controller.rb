class UsersController < ApplicationController
  def index
    @users = User.order("created_at DESC")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user]) 
    if @user.save
      sign_in @user
      redirect_to users_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to user_path
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
  end

  def addFavorite
    Activity.find(params[:user][:activity_id]).users << current_user
    redirect_to :back
  end

  def removeFavorite
    Activity.find(params[:user][:activity_id]).users.delete(current_user)
    redirect_to :back
  end
end
