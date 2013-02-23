class Vote < ActiveRecord::Base
  attr_accessible :tutorial_id,
                  :user_id,
                  :score
  
  validates :tutorial_id, :presence => true
  validates :user_id,     :presence => true
  validates :score,       :presence => true
  validates :user_id,     :uniqueness => {:scope => :tutorial_id,
                                                    :message => "has already voted for this tutorial"}

  belongs_to :tutorial
  belongs_to :user
end
