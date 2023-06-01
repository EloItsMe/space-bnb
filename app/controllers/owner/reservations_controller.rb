module Owner
  class ReservationsController < ApplicationController
    def index
      @reservations = Reservation.where(renter: current_user)
    end
  end
end
