class ArtworkShare < ApplicationRecord
    validates :artwork_id, uniqueness: true
    validates :viewer_id, uniqueness: true

    belongs :viewer,
    class_name: :User,
    primary_key: :id,
    foreign_key: :viewer_id

    belongs_to :artwork,
    class_name: :Artwork,
    primary_key: :id,
    foreign_key: :artwork_id


end 