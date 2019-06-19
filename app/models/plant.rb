class Plant < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :plant_likes
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: :user

  validates :name, presence: true
  validates :img_url, presence: true
  validates :sunlight, presence: true
  validates :water, presence: true
  validates :temperature, presence: true
  validates :description, length: { maximum: 300 }

  def self.search(search)
    plant = Plant.where(name: search)
  end

end
