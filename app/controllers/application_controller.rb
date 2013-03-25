class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :all_technologies

  def all_technologies
    # Technology.all.sort! { |a, b| a.name <=> b.name }
    Technology.all.group_by { |tech| tech.name[0,1].upcase }
  end

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    :root
  end

end
