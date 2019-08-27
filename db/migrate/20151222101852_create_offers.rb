class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.float :cost
      t.integer :deal_info_id

      t.timestamps null: false
    end
  end
end
