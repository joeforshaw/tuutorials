 class TutorialsController < ApplicationController
  def index
    @tutorials = Tutorial.all
  end

  def show
    @tutorial = Tutorial.find(params[:id])
    @comments = @tutorial.comments
  end

  def new
    if !user_signed_in?
      redirect_to :user_session
    end
    @technology = Technology.find(params[:technology])
  end

  def create
    @technology = Technology.find(params[:technology])
    if params[:link].nil? || params[:link] == ""
      link = nil
    else 
      link = /^http/.match(params[:link]) ? params[:link] : "http://#{params[:link]}"
    end
    @tutorial = Tutorial.new(
      :name          => params[:name],
      :link          => link,
      :description   => params[:description],
      :technology_id => @technology.id,
      :user_id       => current_user.id,
      :up_votes      => 0,
      :down_votes    => 0
    )
    if @tutorial.save
      redirect_to(@tutorial.technology, :anchor => "#{@tutorial.id}")
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