class Category < ApplicationRecord
  has_many :words, dependent: :destroy
  has_many :lessons, dependent: :destroy
  has_many :lesson_words, dependent: :destroy
  accepts_nested_attributes_for :words, allow_destroy: true
  validates :title, presence: true
  validates :description, presence: true
end
