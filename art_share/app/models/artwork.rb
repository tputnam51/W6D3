# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null

Artwork
    .joins(:artworks_shared)
    .where()
    .where(artist_id: params[:user_id])
    
    


class Artwork < ApplicationRecord
    has_many :artworks_shares,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

    belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User

    has_many :shared_viewers,
    through: :artworks_shares,
    source: :viewer

    validates :title, :image_url, :artist_id, presence: true
    validates :title, uniqueness: { scope: :artist_id}
end
