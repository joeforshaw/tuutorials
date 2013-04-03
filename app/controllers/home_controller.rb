class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      @reports = current_user.reports
      @votes   = current_user.votes
    end

    all_technologies = Technology.all.sort! { |a, b| a.name.upcase <=> b.name.upcase }
    @groupedAlphabetically = all_technologies.group_by do |technology|
      technology.name[0,1].upcase
    end

  end

end
