# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    has_many :artworks_shared,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare

    has_many :artworks_created,
    foreign_key: :artist_id,
    class_name: :Artwork

    has_many :shared_artworks,
    through: :artworks_shared,
    source: :artwork
    
    validates :username, presence: true, uniqueness: true
end
