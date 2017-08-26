# == Schema Information
#
# Table name: artworks
#
#  id         :integer          not null, primary key
#  image      :text
#  user_id    :integer
#  photo_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
  belongs_to :photo, :optional => true
  belongs_to :user, :optional => true
end
