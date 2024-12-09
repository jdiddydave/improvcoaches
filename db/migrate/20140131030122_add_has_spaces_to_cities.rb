class AddHasSpacesToCities < ActiveRecord::Migration[4.2]
  def change
    add_column :cities, :has_spaces, :boolean
  end
end
