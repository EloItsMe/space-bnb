class Planet < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :planets_reviews

  validates :name, :content, :size, :galaxy, :kind, :price_per_day, presence: true
  validates :name, uniqueness: true
  validates :kind, inclusion: { in: %w(planet comet meteorite star) }
end
