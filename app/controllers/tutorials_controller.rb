 class TutorialsController < ApplicationController
  def index
    @tutorials = Tutorial.all
  end

  def show
    @tutorial = Tutorial.find(params[:id])
    @comments = @tutorial.comments
  end

  def new
    @technology = Technology.find(params[:technology])
  end

  def create
    @technology = Technology.find(params[:technology])
    @tutorial = Tutorial.new(
      :name          => params[:name],
      :link          => params[:link],
      :description   => params[:description],
      :technology_id => @technology.id,
      :user_id       => 1,
      :up_votes      => 0,
      :down_votes    => 0
    )
    if @tutorial.save
      @result = "Successfully added \"#{@tutorial.name}\""
    else
      @result = "Failed to add \"#{@tutorial.name}\""
    end
  end

  def edit
    @tutorial = Tutorial.find(params[:id])
  end

  def update
    @tutorial = Tutorial.find(params[:id])
    @tutorial.update_attributes(params[:user])
  end

  def destroy
    @tutorial = Tutorial.find(params[:id])
    @tutorial.destroy
  end
end