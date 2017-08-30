# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  location        :text
#  image           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  longitude       :float
#  latitude        :float
#

class User < ApplicationRecord
  geocoded_by :location
  validates :location, :presence => true
  after_validation :geocode
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  validates :name, :presence => true
  has_many :artworks
  has_many :photos
  has_many :likes
  has_many :comments
  has_many :liked_artworks, through: :likes, source: :artwork
  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
  has_many :following, through: :active_relationships,  source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  def follow(other_user)
  following << other_user
end

def unfollow(other_user)
  following.delete(other_user)
end

def following?(other_user)
  following.include?(other_user)
end

def likes?(artwork)
  likes.include?(artwork)
end
end
