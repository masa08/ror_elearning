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

class LessonWord < ApplicationRecord
  belongs_to :lesson
  belongs_to :word
  belongs_to :word_answer
end
