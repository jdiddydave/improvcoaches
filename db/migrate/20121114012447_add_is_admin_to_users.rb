class AddIsAdminToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :is_admin, :integer
  end
end
