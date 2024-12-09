class RemoveTheatreIdFromUsers < ActiveRecord::Migration[4.2]
  def up
    remove_column :users, :theatre_id
  end

  def down
    add_column :users, :theatre_id, :integer
  end
end
