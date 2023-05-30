class Planet < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :planets_reviews, dependent: :destroy
  has_one_attached :photo

  validates :name, :content, :size, :galaxy, :kind, :price_per_day, :photo, presence: true
  validates :name, uniqueness: true
  validates :kind, inclusion: { in: %w(planet comet meteorite star) }
end
