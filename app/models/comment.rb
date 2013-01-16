class Comment < ActiveRecord::Base
  attr_accessible :forum_post_id, :message, :user_id
  validate :message, presence: true
end
