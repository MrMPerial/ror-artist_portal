class AddArtistIdToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :artists_id, :integer
  end
end
