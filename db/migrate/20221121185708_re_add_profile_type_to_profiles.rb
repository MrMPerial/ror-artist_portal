class ReAddProfileTypeToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :profile_type, :string
  end
end
