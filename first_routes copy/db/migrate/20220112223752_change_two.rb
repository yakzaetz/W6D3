class ChangeTwo < ActiveRecord::Migration[5.2]
  def change
    add_index :artwork_shares
    # add_column :artwork_shares, t.timestamps
  end
end
