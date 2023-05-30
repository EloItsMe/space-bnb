class PlanetsReview < ApplicationRecord
  belongs_to :planet
  belongs_to :renter, class_name: "User"

  validates :title, :content, :rating, presence: true
end
