class RemoveProfilesIdFromSongs < ActiveRecord::Migration[7.0]
  def change
    remove_column :songs, :profiles_id
  end
end
