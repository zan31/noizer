class AddAuthorToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :author, :string
  end
end
