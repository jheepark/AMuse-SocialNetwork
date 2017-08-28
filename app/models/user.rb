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
#

class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  validates :name, :presence => true
  has_many :artworks
  has_many :photos
  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
end
