class Planet < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :planets_reviews
end
