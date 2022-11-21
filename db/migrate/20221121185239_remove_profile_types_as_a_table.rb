class RemoveProfileTypesAsATable < ActiveRecord::Migration[7.0]
  def change
    drop_table :profile_types
    remove_column :profiles, :profile_type, :string
  end
end
