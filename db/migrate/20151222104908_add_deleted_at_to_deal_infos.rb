class AddDeletedAtToDealInfos < ActiveRecord::Migration
  def change
    add_column :deal_infos, :deleted_at, :datetime
    add_index :deal_infos, :deleted_at
  end
end
