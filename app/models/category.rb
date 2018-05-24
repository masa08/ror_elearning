class Category < ApplicationRecord
  has_many :words, dependent: :destroy
  accepts_nested_attributes_for :words, allow_destroy: true
  validates :title, presence: true
  validates :description, presence: true
end
