class CreateInvites < ActiveRecord::Migration[4.2]
  def change
    create_table :invites do |t|
      t.string :code
      t.integer :owner_id
      t.string :recipient
      t.string :status

      t.timestamps
    end
  end
end
