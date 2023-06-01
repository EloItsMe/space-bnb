module Owner
  class ReservationsController < ApplicationController
    def index
      @reservations = Reservation.includes(:planet).where(planets: { owner: current_user }, status: 'pending')
    end
  end
end
