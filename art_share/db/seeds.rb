# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    user_1 = User.create( {username: 'George'})
    user_2 = User.create( {username: 'Tom'})
    user_3 = User.create( {username: 'Jason'})
    user_4 = User.create( {username: 'John'})
    user_5 = User.create( {username: 'Jane'})

    artwork_1 = Artwork.create( {title: 'star night', image_url: 'www.starnight.com', artist_id: user_1.id})
    artwork_2 = Artwork.create( {title: 'waterfront', image_url: 'www.waterfront.com', artist_id: user_2.id})
    artwork_3 = Artwork.create( {title: 'rolling hills', image_url: 'www.rollinghills.com', artist_id: user_4.id})
    artwork_4 = Artwork.create( {title: 'sunset', image_url: 'www.sunset.com', artist_id: user_3.id})
    artwork_5 = Artwork.create!( {title: 'sunset', image_url: 'www.sunsetjane.com', artist_id: 5})

    artwork_share = ArtworkShare.create!( {artwork_id: 2, viewer_id: 1 })
    artwork_share_1 = ArtworkShare.create!( {artwork_id: 4, viewer_id: 3 })
    artwork_share_2 = ArtworkShare.create!( {artwork_id: 4, viewer_id: 2 })
    
