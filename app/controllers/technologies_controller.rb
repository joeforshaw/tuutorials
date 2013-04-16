class TechnologiesController < ApplicationController
  def index
    @technologies = Technology.all
  end

  def show
    @technology = Technology.find(params[:id])
    @tags       = @technology.tags
    @tutorials  = @technology.tutorials

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