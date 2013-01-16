class Directory < ActiveRecord::Base
  attr_accessible :address, :comment, :major, :phone, :user_id, :year
  
  belongs_to :user
  
  YEAR_TYPES = ["Freshman", "Sophomore", "Junior", "Senior", "Super Senior"]
  
end
