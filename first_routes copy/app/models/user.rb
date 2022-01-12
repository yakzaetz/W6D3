class User < ApplicationRecord
    
    has_many :artworks,
        class_name: :Artwork,
        primary_key: :id,
        foreign_key: :artist_id

end