class TechnologiesController < ApplicationController
  def index
    if user_signed_in?
      @reports = current_user.reports
      @votes   = current_user.votes
    end

    all_technologies = Technology.all.sort! { |a, b| a.name.upcase <=> b.name.upcase }
    @technologies_grouped_alphabetically = all_technologies.group_by do |technology|
      technology.name[0,1].upcase
    end
  end

  def show
    @technology = Technology.find(params[:id])
    @tags       = @technology.tags
    @tutorials  = @technology.tutorials
    @title      = "#{@technology.name} Tutorials"

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