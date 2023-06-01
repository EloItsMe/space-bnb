class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @planets = Planet.all
    return unless params[:query].present?

    sql_subquery = <<~SQL
      planets.name ILIKE :query
      OR planets.galaxy ILIKE :query
      OR planets.kind ILIKE :query
    SQL
    @planets = @planets.where(sql_subquery, query: "%#{params[:query]}%")
  end

  def show
    @planet = Planet.find(params[:id])
    @reservation = Reservation.new
  end
end
