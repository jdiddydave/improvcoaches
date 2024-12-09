class AddPrimaryTheatreIdToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :theatre_id, :integer
  end
end
