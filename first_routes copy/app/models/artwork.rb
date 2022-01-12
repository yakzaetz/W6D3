class Artwork < ApplicationRecord
    validates :title, presence: true, uniqueness: {scope: :artist_id}
    validates :img_url, presence: true

    belongs_to :artist,
        class_name: :User,
        primary_key: :id,
        foreign_key: :artist_id

    has_one :viewer,
    class_name: :ArtworkShare,
    primary_key: :id,
    foreign_key: :artwork_id
end