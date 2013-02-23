class Tag < ActiveRecord::Base
  attr_accessible :description, :name, :technology_id

  validates :name, :presence => true

  has_many :applied_tags
  has_many :technologies, :through => :applied_tags
end
