class Reservation < ApplicationRecord
  attr_accessor :daterange
  # Ça veut dire 

  belongs_to :planet
  belongs_to :renter, class_name: "User"

  validates :start_date, :end_date, :total_price, :planet_id, :renter_id, presence: true
end
