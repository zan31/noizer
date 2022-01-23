class AddCategoryIdToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :category_id, :integer
    add_index :songs, :category_id
    add_foreign_key :songs, :categories, column: :category_id
  end
end
