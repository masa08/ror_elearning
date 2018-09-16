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

require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
