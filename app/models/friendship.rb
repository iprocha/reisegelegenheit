class Friendship < ActiveRecord::Base
  attr_accessible :friend_id, :user_id, :friendship_accepted,:id

  belongs_to :user
  belongs_to :friend, :class_name => "User"
end
