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
#
class Artwork < ApplicationRecord
    has_many :artworks_shares,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

    belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User


    validates :title, :image_url, :artist_id, presence: true
    validates :title, uniqueness: { scope: :artist_id}
end
