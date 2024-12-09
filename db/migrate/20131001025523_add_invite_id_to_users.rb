class AddInviteIdToUsers < ActiveRecord::Migration[4.2]
  def change
  	add_column :users, :invite_id, :integer
  end
end
