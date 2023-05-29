class Planet < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :planets_reviews, dependent: :destroy

  validates :name, :content, :size, :galaxy, :kind, :price_per_day, presence: true
  validates :name, uniqueness: true
  validates :kind, inclusion: { in: %w(planet comet meteorite star) }
end
