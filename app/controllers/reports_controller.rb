class ReportsController < ApplicationController

  def index
    throw Exception
  end

  def show
    throw Exception
  end

  def new
    if !user_signed_in?
      redirect_to :user_session
      return
    end    
  end

  def create
    category = ReportCategory.find_by_name(params[:report_category])
    
    if category.nil?
      throw Exception
    end
    
    if category.name == "Tutorial"
      @reported_object = Tutorial.find(params[:reported_object])
      redirect_to @reported_object.technology
    elsif category.name == "Comment"
      @reported_object = Comment.find(params[:reported_object])
      redirect_to @reported_object.tutorial
    elsif category.name == "User"
      @reported_object = User.find(params[:reported_object])
      redirect_to @reported_object
    end

    if @reported_object.nil?
      throw Exception
    end

    @report = Report.new(
      :report_category_id => category.id,
      :user_id            => current_user.id,
      :reported_object_id => @reported_object.id,
      :reason             => params[:reason]
    )
    @report.save
  end
  
  def destroy
    if !user_signed_in?
      redirect_to :user_session
      return
    end
    
    category = ReportCategory.find_by_name(params[:report_category])
    
    if category.nil?
      throw Exception
    end
    
    if category.name == "Tutorial"
      @reported_object = Tutorial.find(params[:reported_object])
      redirect_to @reported_object.technology
    elsif category.name == "Comment"
      @reported_object = Comment.find(params[:reported_object])
      redirect_to @reported_object.tutorial
    elsif category.name == "User"
      @reported_object = User.find(params[:reported_object])
      redirect_to @reported_object
    end
    
    if @reported_object.nil?
      throw Exception
    end
    
    report = Report.where(
      :report_category_id => category.id,
      :user_id            => current_user.id,
      :reported_object_id => @reported_object.id
    ).first
    report.delete
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    @report = Report.find(params[:id])
    @report.update_attributes(params[:user])
  end

end
