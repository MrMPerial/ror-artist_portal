class AddSongsCheckToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :has_song, :boolean
  end
end
