class CreateDealInfos < ActiveRecord::Migration
  def change
    create_table :deal_infos do |t|
      t.boolean :for_rent, default: true
      t.boolean :for_sale, default: false
      t.string :state, default: 'free'
      t.integer :deal_infoable_id
      t.string :deal_infoable_type

      t.timestamps null: false
    end
  end
end
