class CreateViagems < ActiveRecord::Migration
  def change
    create_table :viagems do |t|
      t.string :organizador
      t.text :itinerario
      t.decimal :preco_esperado
      t.date :data_partida
      t.date :data_chegada
      t.decimal :preco_medio
      t.integer :duracao
      t.string :link_hostel01
      t.string :link_hostel02

      t.timestamps
    end
  end
end
