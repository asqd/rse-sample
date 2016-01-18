class AddDeletedAtToBuildings < ActiveRecord::Migration
  def change
    add_column :buildings, :deleted_at, :datetime
    add_index :buildings, :deleted_at
  end
end
