# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create :name => "Bobby Bob", :email => "Bob@burgers.com", :location => "Boston", :image => "http://res.cloudinary.com/jheepark/image/upload/v1504146620/guy_ogqstb.jpg", :password => "chicken"
u2 = User.create :name => "Rainbow Dash", :email => "Rainbow@Dash.com", :location => "California", :image => "http://res.cloudinary.com/jheepark/image/upload/v1504146622/man_zyswvo.jpg", :password => "chicken"

Photo.destroy_all
p1 = Photo.create :image => "http://res.cloudinary.com/jheepark/image/upload/v1504146619/homepageimg_yutna0.jpg"

Artwork.destroy_all
a1 = Artwork.create :image => "http://res.cloudinary.com/jheepark/image/upload/v1504146646/sketch_hmgozb.jpg"
a2 = Artwork.create :image => "http://res.cloudinary.com/jheepark/image/upload/v1504146619/homepageimg_yutna0.jpg"

Comment.destroy_all
c1 = Comment.create :content => "I like beans"
c2 = Comment.create :content => "I like beetles"

u1.photos << p1
u1.artworks << a1 << a2
p1.artworks << a1
u1.followers << u2
u1.comments << c1
a1.comments << c1
p1.artworks << a2
a2.comments << c2
u2.comments << c2
# users = User.all
# user  = users.first
# following = users[2..50]
# followers = users[3..40]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }
