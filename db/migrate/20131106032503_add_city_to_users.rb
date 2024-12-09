class AddCityToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :city_id, :integer
  end
end
