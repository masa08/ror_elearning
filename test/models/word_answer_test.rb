# == Schema Information
#
# Table name: word_answers
#
#  id         :bigint(8)        not null, primary key
#  content    :text(65535)
#  word_id    :bigint(8)
#  correct    :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class WordAnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
