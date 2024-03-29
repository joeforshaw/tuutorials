class UsersController < ApplicationController
  def show
    @user  = User.find(params[:id])
    @title = @user.username
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:id])
    @user.save
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
  end

  def destroy
  end
end
