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
    dependent: :destroy,
    class_name: :ArtworkShare

    has_many :artworks_created,
    foreign_key: :artist_id,
    dependent: :destroy,
    class_name: :Artwork

    has_many :shared_artworks,
    through: :artworks_shared,
    source: :artwork

    has_many :comments_made,
        foreign_key: :user_id,
        class_name: :Comment,
        dependent: :destroy

    validates :username, presence: true, uniqueness: true
end
