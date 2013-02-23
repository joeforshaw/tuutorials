class Technology < ActiveRecord::Base
  attr_accessible :description, :name, :technology_category_id

  belongs_to :technology_category
  has_many   :applied_tags
  has_many   :tags, :through => :applied_tags
  has_many   :tutorials
end
