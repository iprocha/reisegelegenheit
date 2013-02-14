class AddFriendshipAcceptToFriendship < ActiveRecord::Migration
  def change
    add_column :friendships, :friendship_accepted, :boolean, :default => 0
  end
end
