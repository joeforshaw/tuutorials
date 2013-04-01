class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end

  def show
    @vote = Vote.find(params[:id])
  end

  def new

  end

  def create
    if !user_signed_in?
      redirect_to :user_session
      return
    end

    @tutorial = Tutorial.find(params[:tutorial])
    score = params[:vote].to_i

    @vote = Vote.new(
      :score       => score,
      :tutorial_id => @tutorial.id,
      :user_id     => current_user.id
    )
    @tutorial.vote!(current_user, @vote)
    redirect_to @vote.tutorial.technology
  end

  def edit
    @vote = Vote.find(params[:id])
  end

  def update
    @vote = Vote.find(params[:id])
    @vote.update_attributes(params[:user])
  end

  def destroy
    @vote = Vote.find(params[:id])

    tutorial = Tutorial.find(params[:tutorial])

    if params[:vote] == "up"
      Tutorial.decrement_counter(:up_votes, tutorial.id)
    elsif params[:vote] == "down"
      Tutorial.decrement_counter(:down_votes, tutorial.id)
    else
      throw Exception
    end

    @vote.destroy
  end
end