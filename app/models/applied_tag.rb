class AppliedTag < ActiveRecord::Base
  attr_accessible :technology_id,
                  :tag_id
  
  belongs_to :technology
  belongs_to :tag
end
