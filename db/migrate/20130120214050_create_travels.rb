class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.integer :user_id
      t.integer :viagem_id

      t.timestamps
    end
  end
end
