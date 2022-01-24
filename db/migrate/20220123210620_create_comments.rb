class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :song_time
      t.integer :song_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
