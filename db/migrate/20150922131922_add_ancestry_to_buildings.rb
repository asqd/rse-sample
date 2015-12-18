class AddAncestryToBuildings < ActiveRecord::Migration
  def change
    add_column :buildings, :ancestry, :string
  end
end
