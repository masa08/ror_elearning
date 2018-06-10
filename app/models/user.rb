class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  before_save { self.email = email.downcase }
  has_many :lesson, dependent: :destroy
  has_many :lesson_words, dependent: :destroy
  validates :name, presence: true,
                   length: { maximum: 50 }
  validates :email, presence: true,
                    length: { maximum: 255 },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: {minimum: 6}, on: :create
  has_secure_password
end
