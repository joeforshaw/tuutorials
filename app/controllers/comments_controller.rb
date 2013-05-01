class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    if !user_signed_in?
      redirect_to :user_session
    end
    @tutorial = Tutorial.find(params[:tutorial])
  end

  def create
    @tutorial = Tutorial.find(params[:tutorial])
    @comment = Comment.new(
      :body        => params[:body],
      :tutorial_id => @tutorial.id,
      :user_id     => current_user.id
    )
    if @comment.save
      redirect_to(@comment.tutorial)
    else
      @result = "Failed to add comment: #{params[:comment]}, #{@tutorial.id}, #{current_user.id}"
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params[:user])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end
end