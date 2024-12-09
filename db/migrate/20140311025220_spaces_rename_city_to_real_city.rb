class SpacesRenameCityToRealCity < ActiveRecord::Migration[4.2]
  def up
  	rename_column :spaces, :city, :real_city
  end

  def down
  	rename_column :table, :city, :real_city
  end
end
