# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  artwork_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :artwork, :optional => true
  validates :user_id, uniqueness: { scope: :artwork_id }
end
