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
    validates :username, presence: true, uniqueness: true

    has_many :artworks,
        foreign_key: :artist_id,
        class_name: :Artwork

    has_one :share,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare
    # a user cannot have a single artwork shared with 
    # them more than once 
    
    has_many :shared_artworks,
        through: :share,
        source: :artwork

    has_many :comments,
        foreign_key: :commenter_id,
        class_name: :Comment,
        dependent: :destroy
end
