class AddSortOrderToSpaceImage < ActiveRecord::Migration[4.2]
  def change
    add_column :space_images, :sort_order, :integer
  end
end
