class TechnologyCategory < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :technologies
end
