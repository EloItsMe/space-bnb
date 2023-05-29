class Reservation < ApplicationRecord
  belongs_to :planet
  belongs_to :user

  validates :start_date, :end_date, :total_price, :planet_id, :renter_id, presence: true
end
