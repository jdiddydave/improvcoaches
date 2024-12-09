class AddScheduleIdToTimeBlock < ActiveRecord::Migration[4.2]
  def change
    add_column :time_blocks, :schedule_id, :integer
  end
end
