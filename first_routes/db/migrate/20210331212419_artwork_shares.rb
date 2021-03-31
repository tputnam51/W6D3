class ArtworkShares < ActiveRecord::Migration[5.2]

  # need to add uniqueness constraints to both model and db before migrate

  def change
    t.integer :artwork_id, null: false
    t.integer :viewer_id, null: false
  end
end
