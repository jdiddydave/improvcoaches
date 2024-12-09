class AddRatingToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :rating, :integer

    User.all.each do |user|
  		user.rating = user.calculate_rating
  		user.save
  	end
  end
end
