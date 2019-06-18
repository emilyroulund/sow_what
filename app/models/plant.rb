class Plant < ApplicationRecord
  belongs_to :creator, foreign_key: :user_id
  has_many :comments
  has_many :plant_likes
  has_many :favorites
  has_many :users, through: :favorites

  validates :name, presence: true
  validates :img_url, presence: true
  validates :sunlight, presence: true
  validates :water, presence: true
  validates :temperature, presence: true
  validates :description, length: { maximum: 300 }


end
