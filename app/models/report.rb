class Report < ActiveRecord::Base
  attr_accessible :report_category_id,
                  :reported_object_id,
                  :user_id,
                  :reason
  
  belongs_to :report_category
  belongs_to :user

  validates :report_category_id, :uniqueness => {:scope => [:reported_object_id, :user_id],
                                                 :message => "has already voted for this tutorial!"}
end