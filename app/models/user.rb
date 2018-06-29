class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  before_save { self.email = email.downcase }
  has_many :lesson, dependent: :destroy
  has_many :lesson_words, dependent: :destroy

  # active relationship
  has_many :active_relationships, class_name: "Relationship",
                                foreign_key: "follower_id",
                                dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed

  # passive relationship
  has_many :passive_relationships, class_name: "Relationship",
                                  foreign_key: "followed_id",
                                  dependent: :destroy
  has_many :followers, through: :passive_relationships

  validates :name, presence: true,
                   length: { maximum: 50 }
  validates :email, presence: true,
                    length: { maximum: 255 },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: {minimum: 6}, on: :create
  has_secure_password

  def feed
    following_ids  = "SELECT followed_id FROM relationships
                      WHERE follower_id = :user_id"
    Lesson.where("user_id IN (#{following_ids}) OR user_id = :user_id", user_id: id)
  end

  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  def following?(other_user)
    following.include?(other_user)
  end
end
