class RemoveHasSongFromProfiles < ActiveRecord::Migration[7.0]
  def change
    remove_column :profiles, :has_song
  end
end
