class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
    @reservation = Reservation.new
  end
end
