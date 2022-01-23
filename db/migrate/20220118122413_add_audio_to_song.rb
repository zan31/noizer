class AddAudioToSong < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :audio, :string
  end
end
