class Leg < ActiveRecord::Base
  attr_accessible :arrival_date, :average_price, :departure_date, :duration, :lodging, :lodging_link, :lodging_price, :miscelaneous, :miscellaneous_price, :total_price, :transport, :transport_link, :transport_price,:leg_from,:leg_to,:viagem_id
  belongs_to :viagem
end
