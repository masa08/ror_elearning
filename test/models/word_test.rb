# == Schema Information
#
# Table name: words
#
#  id          :bigint(8)        not null, primary key
#  content     :text(65535)
#  category_id :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class WordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
