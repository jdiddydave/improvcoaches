class AddAuthTokenAndPasswordResetTimeToUser < ActiveRecord::Migration[4.2]
  def change
  	add_column :users, :auth_token, :string
  	add_column :users, :password_reset_token, :string
  	add_column :users, :password_reset_time, :datetime
  end
end
