class User < ApplicationRecord
  has_secure_password

  has_many :plant_likes
  has_many :comment_upvotes
  has_many :plants
  has_many :comments
  has_many :favorites
  has_many :favorite_plants, through: :favorites, source: :plant

  validates :name, :username, presence: true
  validates :username, uniqueness: true

  def most_recent_comments
    self.comments.order(created_at: :desc).limit(5)
  end
end
