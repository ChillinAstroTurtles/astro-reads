class AddCoverImageUrlToBook < ActiveRecord::Migration
  def change
    add_column :books, :cover_image_url, :string
  end
end
