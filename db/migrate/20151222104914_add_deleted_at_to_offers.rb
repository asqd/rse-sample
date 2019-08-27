class AddDeletedAtToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :deleted_at, :datetime
    add_index :offers, :deleted_at
  end
end
