class TechnologiesController < ApplicationController
  def index
    @technologies = Technology.all
  end

  def show
    @technology = Technology.find(params[:id])
    @tags       = @technology.tags
    @tutorials  = @technology.tutorials.all

    # @tutorials.each do |tutorial|
    #   @votes[tutorial.name] = tutorial.up_votes + tutorial.down_votes
    #   if tutorial.up_votes == 0
    #     @ratings[tutorial.name] = 0
    #   elsif tutorial.down_votes == 0
    #     @ratings[tutorial.name] = 100
    #   else
    #     @ratings[tutorial.name] = ((tutorial.up_votes.to_f / @votes[tutorial.name].to_f) * 100.0).round(1)
    #   end
    # end

    @tutorials.sort! { |a, b| b.percent_rating <=> a.percent_rating }
  end

  def new
    @technology = Technology.new
  end

  def create
    @technology = Technology.new(params[:id])
    @technology.save
  end

  def edit
    @technology = Technology.find(params[:id])
  end

  def update
    @technology = Technology.find(params[:id])
    @technology.update_attributes(params[:user])
  end

  def destroy
    @technology = Technology.find(params[:id])
    @technology.destroy
  end
end 