class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @tutorial = Tutorial.find(params[:tutorial])
  end

  def create
    @tutorial = Tutorial.find(params[:tutorial])
    @comment = Comment.new(
      :body        => params[:body],
      :tutorial_id => @tutorial.id,
      :user_id     => 1
    )
    if @comment.save
      @result = "Successfully added comment"
    else
      @result = "Failed to add comment"
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