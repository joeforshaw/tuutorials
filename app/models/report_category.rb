class ReportCategory < ActiveRecord::Base
  attr_accessible :name

  has_many :reports
end
