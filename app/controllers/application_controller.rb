class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :all_technologies

  def all_technologies
    Technology.all
  end
end
