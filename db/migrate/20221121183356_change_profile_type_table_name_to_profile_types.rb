class ChangeProfileTypeTableNameToProfileTypes < ActiveRecord::Migration[7.0]
  def change
    rename_table :profile_type, :profile_types
  end
end
