# == Schema Information
#
# Table name: lesson_words
#
#  id             :bigint(8)        not null, primary key
#  lesson_id      :bigint(8)
#  word_answer_id :bigint(8)
#  word_id        :bigint(8)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class LessonWordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
