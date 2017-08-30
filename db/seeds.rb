# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create :name => "Bobby Bob", :email => "Bob@burgers.com", :location => "Texas", :image => "https://img.buzzfeed.com/buzzfeed-static/static/2015-10/26/18/enhanced/webdr07/original-11566-1445900371-3.jpg?crop=734:734;127,31&downsize=715:*&output-format=auto&output-quality=auto", :password => "chicken"
u2 = User.create :name => "Rainbow Dash", :email => "Rainbow@Dash.com", :location => "California", :image => "https://s-media-cache-ak0.pinimg.com/736x/05/73/2c/05732cb2242b178c0da8d273e6d9a15a--rainbow-dash-cake-rainbow-clothes.jpg", :password => "chicken"

Photo.destroy_all
p1 = Photo.create :image => "https://upload.wikimedia.org/wikipedia/en/7/7f/Bob%27s_Burgers_promo.png"

Artwork.destroy_all
a1 = Artwork.create :image => "https://i.pinimg.com/736x/02/59/aa/0259aa1ae1ba2a200e2b831dee05ecc7--bob-s-bobs-burgers-art.jpg"
a2 = Artwork.create :image => "http://vignette1.wikia.nocookie.net/mylittlepony/images/8/8f/Rainbow_Dash.png/revision/latest?cb=20130927081007&path-prefix=fr"

Comment.destroy_all
c1 = Comment.create :content => "lalalala"

u1.photos << p1
u1.artworks << a1 << a2
p1.artworks << a1
u1.followers << u2
u1.comments << c1
a1.comments << c1
# users = User.all
# user  = users.first
# following = users[2..50]
# followers = users[3..40]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }
