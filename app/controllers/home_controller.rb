class HomeController < ApplicationController
  def index
    @technologies = Technology.all
    @groupedAlphabetically = all_technologies
  end
end
