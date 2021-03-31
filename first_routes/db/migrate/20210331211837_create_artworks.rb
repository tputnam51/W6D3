class CreateArtworks < ActiveRecord::Migration[5.2]

  # need to add uniqueness constraints to both model and db before migrate
  
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.string :image_url, null: false
      t.integer :artist_url, unique: true, null: false
    end
  end
end
