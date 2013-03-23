class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :all_technologies

  def all_technologies
    Technology.all.sort! { |a, b| a.name <=> b.name }
  end
end
