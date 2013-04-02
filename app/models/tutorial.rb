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
  belongs_to :reportable, :polymorphic => true
  
  has_many   :comments, :dependent => :destroy
  has_many   :votes,    :dependent => :destroy

  def percent_rating
    return 0 if (up_votes + down_votes).zero?
    (up_votes.to_f / (up_votes + down_votes)) * 100
  end

  def vote!(current_user, vote)
    if voted?(current_user)
      self.unvote!(current_user)
    end

    if vote.score > 0
      self.up_vote!
    elsif vote.score == 0
      self.down_vote!
    else
      throw Exception
    end
    vote.save
  end

  def unvote!(current_user)
    old_vote = Vote.where(
      :tutorial_id => self.id,
      :user_id     => current_user.id
    ).first
    if old_vote.nil?
      throw Exception
    end

    if old_vote.score > 0
      update_attribute :up_votes, (up_votes - 1)
    elsif old_vote.score == 0
      update_attribute :down_votes, (down_votes - 1)
    else
      throw Exception
    end
    old_vote.destroy
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

  def voted?(current_user)
    Vote.exists?(:tutorial_id => self.id, :user_id => current_user.id)
  end

  def up_voted?(current_user)
    Vote.exists?(
      :tutorial_id => self.id,
      :user_id     => current_user.id,
      :score       => 1
    )
  end

  def down_voted?(current_user)
    Vote.exists?(
      :tutorial_id => self.id,
      :user_id     => current_user.id,
      :score       => 0
    )
  end

  include Reportable  

end
        