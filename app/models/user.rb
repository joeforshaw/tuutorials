class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :bio,
                  :email,
                  :password,
                  :password_confirmation,
                  :remember_me,
                  :username

  belongs_to :reportable, :polymorphic => true

  has_many :comments,  :dependent => :destroy
  has_many :reports,   :dependent => :destroy
  has_many :tutorials, :dependent => :destroy
  has_many :votes,     :dependent => :destroy

  include Reportable  

end
