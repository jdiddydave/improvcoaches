class CreateSchedules < ActiveRecord::Migration[4.2]
  def change
    create_table :schedules do |t|
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
