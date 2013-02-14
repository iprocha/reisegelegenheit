class Viagem < ActiveRecord::Base
  attr_accessible :data_chegada, :data_partida, :duracao, :itinerario, :link_hostel01, :link_hostel02, :organizador, :preco_esperado, :preco_medio
  validates :organizador, :itinerario, :preco_esperado, :data_partida, :data_chegada, :presence => true
  validates :preco_esperado, :numericality => {:greater_than => 0}

  has_many :legs, :dependent => :destroy

  has_many :travels
  has_many :users, :through => :travels
end
