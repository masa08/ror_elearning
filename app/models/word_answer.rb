class WordAnswer < ApplicationRecord
  belongs_to :word
  has_many :lesson_words
  validates :content, presence: true
end
