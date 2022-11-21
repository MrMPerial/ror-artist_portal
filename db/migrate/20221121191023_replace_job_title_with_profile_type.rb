class ReplaceJobTitleWithProfileType < ActiveRecord::Migration[7.0]
  def change
    remove_column :profiles, :job_title, :string
  end
end
