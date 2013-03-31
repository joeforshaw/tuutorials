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
  # attr_accessible :title, :body

  has_many :comments
  has_many :reports
  has_many :tutorials
  has_many :votes
  
  include Reportable  

end
