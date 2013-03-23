class Tutorial < ActiveRecord::Base
  attr_accessible :description,
                  :link,
                  :name,
                  :technology_id,
                  :user_id,
                  :up_votes,
                  :down_votes
  
  validates :link,
            :presence => true,
            :length   => { :minimum => 1 }
  validates :name,
            :presence => true,
            :length   => { :minimum => 1 }
  validates :description,
            :presence => true,
            :length   => { :minimum => 1 }
  validates :technology_id,
            :presence => true
  validates :user_id,
            :presence => true

  belongs_to :technology
  belongs_to :user
  has_many   :comments
  has_many   :votes

  def percent_rating
    return 0 if (up_votes + down_votes).zero?
    (up_votes.to_f / (up_votes + down_votes)) * 100
  end

  def up_vote!
    update_attribute :up_votes, (up_votes + 1)
  end

  def down_vote!
    update_attribute :down_votes, (down_votes + 1)
  end

  def total_votes 
    up_votes + down_votes
  end

end
        