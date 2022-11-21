class AddProfileTypeToProfilesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :profile_type_id, :string
  end
end
