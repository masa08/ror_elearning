class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :lesson_words, dependent: :destroy
end
