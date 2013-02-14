class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :birthday
      t.string :city
      t.string :country
      t.integer :user_id

      t.timestamps
    end
  end
end
