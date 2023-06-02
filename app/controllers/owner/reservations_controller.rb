module Owner
  class ReservationsController < ApplicationController
    def index
      @reservations = Reservation.includes(:planet).where(planets: { owner: current_user }, status: ['pending', 'accepted'])
    end

    def accept
      reservation = Reservation.find(params[:id])
      reservation.update(status: 'accepted')
      redirect_to owner_reservations_path
    end

    def decline
      reservation = Reservation.find(params[:id])
      reservation.update(status: 'declined')
      redirect_to owner_reservations_path
    end

    def cancel
      reservation = Reservation.find(params[:id])
      reservation.update(status: 'pending')
      redirect_to owner_reservations_path
    end
  end
end
