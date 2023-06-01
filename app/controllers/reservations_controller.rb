require 'date'

class ReservationsController < ApplicationController
  def create
    daterange = params[:reservation][:daterange].split(',')
    startdate = daterange[0]
    enddate = daterange[1]
    datebetween = Date.new(enddate) - Date.new(startdate)

    @reservation = Reservation.new(
      {
        start_date: startdate,
        end_date: enddate,
        total_price: 0,
        planet_id: params[:planet_id],
        renter_id: current_user.id,
        status: "pending"
      }
    )

    raise
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, total_price:, planet_id:, renter_id:)
  end
end
