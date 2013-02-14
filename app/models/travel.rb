class Travel < ActiveRecord::Base
  attr_accessible :user_id, :viagem_id
  belongs_to :user
  belongs_to :viagem
end
