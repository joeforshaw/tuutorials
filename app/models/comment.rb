class Comment < ActiveRecord::Base
  attr_accessible :body,
                  :tutorial_id,
                  :user_id
  
  validates  :body,        :presence => true,
                           :length   => { :minimum => 1 }
  validates  :tutorial_id, :presence => true
  validates  :user_id,     :presence => true    
  
  belongs_to :tutorial
  belongs_to :user
end
