class CreateTheatres < ActiveRecord::Migration[4.2]
  def change
    create_table :theatres do |t|
      t.string :name
      t.integer :city_id

      t.timestamps
    end
  end
end
