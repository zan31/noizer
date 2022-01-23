class AddImageToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :image, :string
  end
end
