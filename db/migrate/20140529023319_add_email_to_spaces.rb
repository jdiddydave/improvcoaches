class AddEmailToSpaces < ActiveRecord::Migration[4.2]
  def change
    add_column :spaces, :email, :string
  end
end
