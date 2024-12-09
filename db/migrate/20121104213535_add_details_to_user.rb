class AddDetailsToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :img, :string
    add_column :users, :rate, :integer
    add_column :users, :last_updated, :timestamp
  end
end
