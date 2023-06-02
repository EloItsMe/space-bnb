require 'date'

class ReservationsController < ApplicationController
  def create
    @planet = Planet.find(params[:planet_id])
    daterange = params[:reservation][:daterange].split(',')
    startdate = daterange[0]
    enddate = daterange[1]
    if !startdate.nil? && !enddate.nil?
      datebetween = (Date.parse(enddate) - Date.parse(startdate)).to_i + 1
      totalprice = Planet.find(params[:planet_id]).price_per_day * datebetween
    elsif enddate.nil?
      enddate = startdate
      totalprice = Planet.find(params[:planet_id]).price_per_day
    end

    @reservation = Reservation.new(
      {
        start_date: startdate,
        end_date: enddate,
        total_price: totalprice,
        planet_id: params[:planet_id],
        renter_id: current_user.id,
        status: "pending"
      }
    )
    if @reservation.save
      redirect_to reservations_path
    else
      render "planets/show", status: :unprocessable_entity
    end
  end

  def index
    @reservations = Reservation.where(renter: current_user)
    # @reservations = Reservation.includes(:planet).where(planets: { owner: current_user }, status: "pending")
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, total_price:, planet_id:, renter_id:)
  end
end
