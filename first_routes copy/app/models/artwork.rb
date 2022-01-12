class Artwork < ApplicationRecord
    validates :title, uniqueness: true
    validates :img_url, uniqueness: true
    validates :artist_id, uniqueness: true

    belongs_to :artist,
        class_name: :User,
        primary_key: :id,
        foreign_key: :artist_id
end