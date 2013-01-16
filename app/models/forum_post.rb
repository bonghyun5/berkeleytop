class ForumPost < ActiveRecord::Base
  attr_accessible :description,  :title,  :user_id
  validates :title, presence: true
 
end
