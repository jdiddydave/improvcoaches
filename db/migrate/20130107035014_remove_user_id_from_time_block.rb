class RemoveUserIdFromTimeBlock < ActiveRecord::Migration[4.2]
  def up
    remove_column :time_blocks, :user_id
  end

  def down
    add_column :time_blocks, :user_id, :integer
  end
end
