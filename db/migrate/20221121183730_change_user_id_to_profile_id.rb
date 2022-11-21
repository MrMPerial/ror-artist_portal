class ChangeUserIdToProfileId < ActiveRecord::Migration[7.0]
  def change
    remove_column :profile_types, :user_id, :integer
    add_column :profile_types, :profile_id, :integer
  end
end
