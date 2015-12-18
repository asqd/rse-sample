class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :type
      t.integer :area
      t.integer :building_id

      t.timestamps null: false
    end
  end
end
