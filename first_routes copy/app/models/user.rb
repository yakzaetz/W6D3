class User < ApplicationRecord
    
    has_many :artworks,
        class_name: :Artwork,
        primary_key: :id,
        foreign_key: :artist_id

    has_many :artwork_shares,
        class_name: :ArtworkShare,
        primary_key: :id,
        foreign_key: :viewer_id

    has_many :shared_artworks,
        through: :artwork_shares,
        source: :artwork
    
end