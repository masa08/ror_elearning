# == Schema Information
#
# Table name: lessons
#
#  id          :bigint(8)        not null, primary key
#  user_id     :bigint(8)
#  category_id :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Lesson < ApplicationRecord
  after_save :store_activity

  belongs_to :user
  belongs_to :category
  has_many :lesson_words, dependent: :destroy
  has_many :word_answers, through: :lesson_words, dependent: :destroy
  has_many :words, through: :lesson_words, dependent: :destroy
  has_one :activity, as: :action, dependent: :destroy

  private
  def store_activity
    create_activity(user_id: user.id)
  end
end
