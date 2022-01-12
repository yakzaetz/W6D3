class User < ApplicationRecord
    
    has_many :artworks,
        class_name: :Artwork,
        primary_key: :id,
        foreign_key: :artist_id

    belongs_to :shared_artworks,
    class_name: :ArtworkShare,
    primary_key: :id,
    foreign_key: :viewer_id

end