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

  def self.featured_plants
    self.all.sort_by do |plant|
      plant.plant_likes.count
    end
  end

  # def self.top_5_plants
  #    plants = self.plant_likes.group_by do |like|
  #      like.plant
  #    end
  #
  #     sorted = plant.sort_by do |plant, likes|
  #      likes.count
  #    end.reverse
  #
  #     sorted.map do |plant|
  #      plant[0]
  #    end[0..4]
  # end

end
