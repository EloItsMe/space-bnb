class PlanetsReview < ApplicationRecord
  belongs_to :planet
  belongs_to :user

  validates :title, :content, :rating, presence: true
end
