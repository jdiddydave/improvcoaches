class AddSlugToSpaces < ActiveRecord::Migration[4.2]
  def change
  	add_column :spaces, :slug, :string
    add_index :spaces, :slug
  end
end
