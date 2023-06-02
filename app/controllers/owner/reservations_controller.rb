module Owner
  class ReservationsController < ApplicationController
    def index
      @reservations = Reservation.includes(:planet).where(planets: { owner: current_user }, status: ['pending', 'accepted'])
    end

    def accept
      reservation = Reservation.find(params[:id])
      reservation.update(status: 'accepted')
      redirect_to owner_reservations_path, notice: "You have successfully accept the reservation"
    end

    def decline
      reservation = Reservation.find(params[:id])
      reservation.update(status: 'declined')
      redirect_to owner_reservations_path, alert: "You have successfully decline the reservation"
    end

    def cancel
      reservation = Reservation.find(params[:id])
      reservation.update(status: 'pending')
      redirect_to owner_reservations_path, notice: "You have successfully cancel the reservation"
    end
  end
end
