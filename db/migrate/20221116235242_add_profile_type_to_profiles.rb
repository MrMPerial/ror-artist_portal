class AddProfileTypeToProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profile_types do |t|
      t.integer :profile_id
      t.string :basic_profile
      t.string :artist_profile
      t.string :ar_profile

      t.timestamps
    end
  end
end
