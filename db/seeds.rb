# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create :name => "Bobby Bob", :email => "Bob@burgers.com", :location => "Boston", :image => "http://res.cloudinary.com/jheepark/image/upload/q_auto:low/v1504146620/guy_ogqstb.jpg", :password => "chicken"
u2 = User.create :name => "Kevin Smith", :email => "Kevin@Smith.com", :location => "California", :image => "http://res.cloudinary.com/jheepark/image/upload/q_auto:low/v1504146622/man_zyswvo.jpg", :password => "chicken"
u3 = User.create :name => "Sam Apple", :email => "Sam@Apple.com", :location => "Bangkok", :image => "http://res.cloudinary.com/jheepark/image/upload/q_auto:low/v1504179667/pexels-photo-91227_rcrctt.jpg", :password => "chicken"
u4 = User.create :name => "Kim Pear", :email => "Kim@Pear.com", :location => "Russia", :image => "http://res.cloudinary.com/jheepark/image/upload/q_auto:low/v1504178484/StockSnap_6E5ZAMCKC4_ynmtfp.jpg", :password => "chicken"


Photo.destroy_all
p1 = Photo.create :image => "https://res.cloudinary.com/jheepark/image/upload/q_auto:low/v1504146619/homepageimg_yutna0.jpg"
p2 = Photo.create :image => "https://res.cloudinary.com/jheepark/image/upload/q_auto:low/v1504179626/pexels-photo-374871_a8utvi.jpg"
p3 = Photo.create :image => "https://res.cloudinary.com/jheepark/image/upload/q_auto:low/v1504178901/StockSnap_L913H85MTJ_hzlwi3.jpg"
p4 = Photo.create :image => "https://res.cloudinary.com/jheepark/image/upload/q_auto:low/v1504178787/StockSnap_NZNXA4KMHA_dkssoq.jpg"

Artwork.destroy_all
a1 = Artwork.create :image => "https://res.cloudinary.com/jheepark/image/upload/q_auto:low/v1504146646/sketch_hmgozb.jpg"
a2 = Artwork.create :image => "https://res.cloudinary.com/jheepark/image/upload/q_auto:low/v1504146619/homepageimg_yutna0.jpg"
a3 = Artwork.create :image => "https://res.cloudinary.com/jheepark/image/upload/q_auto:low/v1504178632/StockSnap_HAVDKM2NOT_aguj03.jpg"
a4 = Artwork.create :image => "https://res.cloudinary.com/jheepark/image/upload/q_auto:low/v1504178344/StockSnap_G5SBMTL1X4_rpoagr.jpg"
a5 = Artwork.create :image => "https://res.cloudinary.com/jheepark/image/upload/q_auto:low/v1504178657/StockSnap_1D11J46UC5_vlxnyu.jpg"

Comment.destroy_all
c1 = Comment.create :content => "I like beans"
c2 = Comment.create :content => "I like beetles"
c3 = Comment.create :content => "I like Apples"
c4 = Comment.create :content => "I like Pears"
c5 = Comment.create :content => "I like Oranges"

u1.photos << p1
u2.photos << p2 << p3
u3.photos << p3
u4.photos << p4

u1.artworks << a1 << a2
u2.artworks << a3
u3.artworks << a4
u4.artworks << a5

p1.artworks << a1
p2.artworks << a3 << a4
p3.artworks << a2
p4.artworks << a5


u1.followers << u2 << u3 << u4
u2.followers << u1 << u3
u3.followers << u2 << u1

u1.comments << c1
u2.comments << c2
u3.comments << c3 << c5
u4.comments << c4

a1.comments << c1
a2.comments << c2
a3.comments << c3
a4.comments << c4
a5.comments << c5



# users = User.all
# user  = users.first
# following = users[2..50]
# followers = users[3..40]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }
