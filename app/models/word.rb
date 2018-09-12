class Word < ApplicationRecord
  belongs_to :category
  has_many :lesson_word, dependent: :destroy
  has_many :word_answers, dependent: :destroy
  accepts_nested_attributes_for :word_answers, allow_destroy: true
  validates :content, presence: true

  validate :has_one_correct_answer

  private
  def has_one_correct_answer
    unless word_answers.select {|a| a.correct?}.count == 1
      errors.add(:word_answers, "should have one collect answer")
    end
  end
end
