# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  image      :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :artworks
end
