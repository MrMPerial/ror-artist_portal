class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.references :cover
      t.references :file

      t.timestamps
    end
  end
end
