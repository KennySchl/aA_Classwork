# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'securerandom'

def rand_id
  rand(1..100_000)
end

ActiveRecord::Base.transaction do
  Artwork.delete_all
  User.delete_all
  ArtworkShare.delete_all

    user_1 = User.create(
        id: rand_id,
        username: 'art_jason'
    )

    user_2 = User.create(
        id: rand_id,
        username: 'art_kenneth'
    )

    artwork1 = Artwork.create(
        id: rand_id,
        title: 'Mona Lisa',
        image_url: SecureRandom.hex(10),
        artist_id: user_1.id
    )

    artwork2 = Artwork.create(
        id: rand_id,
        title: 'The Scream',
        image_url: SecureRandom.hex(10),
        artist_id: user_2.id
    )

    artwork_share1 = ArtworkShare.create(
        id: rand_id,
        artwork_id: artwork1.id,
        viewer_id: user_2.id
    )

    artwork_share2 = ArtworkShare.create(
        id: rand_id,
        artwork_id: artwork2.id,
        viewer_id: user_1.id
    )
    
    comment_1 = Comment.create(
        id: rand_id,
        commenter_id: user_1.id,
        artwork_id: artwork2.id,
        body: 'WOWWWWWWWWWW!'
    )

    comment_2 = Comment.create(
        id: rand_id,
        commenter_id: user_2.id,
        artwork_id: artwork2.id,
        body: 'I know right!'
    )

    comment_3 = Comment.create(
        id: rand_id,
        commenter_id: user_1.id,
        artwork_id: artwork1.id,
        body: 'I''m great'
    )
    comment_4 = Comment.create(
        id: rand_id,
        commenter_id: user_2.id,
        artwork_id: artwork1.id,
        body: 'Nice...'
    )
    comment_4 = Comment.create(
        id: rand_id,
        commenter_id: user_2.id,
        artwork_id: artwork2.id,
        body: 'Hellooooooooo'
    )

end