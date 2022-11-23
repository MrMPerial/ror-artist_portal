class AddProfileReferenceToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :profiles_id, :integer
  end
end
