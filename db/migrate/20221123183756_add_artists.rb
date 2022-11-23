class AddArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.belongs_to :roles
      
      t.string :name
      t.string :genre

      t.timestamps
    end
  end
end
