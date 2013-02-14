class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.string :transport
      t.decimal :transport_price
      t.string :transport_link
      t.string :lodging
      t.decimal :lodging_price
      t.string :lodging_link
      t.string :miscelaneous
      t.decimal :miscellaneous_price
      t.decimal :total_price
      t.decimal :average_price
      t.date :arrival_date
      t.date :departure_date
      t.integer :duration
      t.integer :viagem_id
      t.string :leg_from
      t.string :leg_to

      t.timestamps
    end
  end
end
