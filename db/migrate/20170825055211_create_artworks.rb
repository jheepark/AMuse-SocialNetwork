class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.text :image
      t.integer :user_id
      t.integer :photo_id

      t.timestamps
    end
  end
end
