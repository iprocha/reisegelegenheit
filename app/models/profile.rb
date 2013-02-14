class Profile < ActiveRecord::Base
  attr_accessible :birthday, :city, :country, :name, :user_id

  belongs_to :user
end
