class AddAttachmentPhotoToSpaceImages < ActiveRecord::Migration[4.2]
  def up
    add_column :space_images, :photo_file_name, :string
    add_column :space_images, :photo_content_type, :string
    add_column :space_images, :photo_file_size, :bigint
    add_column :space_images, :photo_updated_at, :datetime
  end

  def down
    remove_column :space_images, :photo_file_name
    remove_column :space_images, :photo_content_type
    remove_column :space_images, :photo_file_size
    remove_column :space_images, :photo_updated_at
  end
end
