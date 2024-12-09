class EnsurePaperclipColumnsExist < ActiveRecord::Migration[4.2]
    def change
      # Avatar columns
      unless column_exists?(:users, :avatar_file_name)
        add_column :users, :avatar_file_name, :string
        add_column :users, :avatar_content_type, :string
        add_column :users, :avatar_file_size, :bigint
        add_column :users, :avatar_updated_at, :datetime
      end

      # Space image columns
      unless column_exists?(:space_images, :photo_file_name)
        add_column :space_images, :photo_file_name, :string
        add_column :space_images, :photo_content_type, :string
        add_column :space_images, :photo_file_size, :bigint
        add_column :space_images, :photo_updated_at, :datetime
      end
    end
  end
