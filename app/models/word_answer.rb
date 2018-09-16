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

class WordAnswer < ApplicationRecord
  belongs_to :word
  has_many :lesson_words, dependent: :destroy
  validates :content, presence: true
end
