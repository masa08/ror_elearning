# == Schema Information
#
# Table name: relationships
#
#  id          :bigint(8)        not null, primary key
#  followed_id :bigint(8)
#  follower_id :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Relationship < ApplicationRecord
    belongs_to :follower, class_name: "User"
    belongs_to :followed, class_name: "User"
    validates :follower_id, presence: true
    validates :followed_id, presence: true
end
