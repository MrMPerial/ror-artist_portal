class ReplaceArtistWithUserId < ActiveRecord::Migration[7.0]
  def change
    remove_column :songs, :artists_id
    add_column :songs, :user_id, :integer
  end
end
