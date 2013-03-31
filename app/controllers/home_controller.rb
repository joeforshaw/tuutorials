class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      @reports = current_user.reports
      @votes   = current_user.votes
    end

    @groupedAlphabetically = Technology.all.group_by { |technology|
      technology.name[0,1].upcase
    }
  end

end
