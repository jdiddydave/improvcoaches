class AddSubdomainToCities < ActiveRecord::Migration[4.2]
  def change
    add_column :cities, :subdomain, :string
  end
end
