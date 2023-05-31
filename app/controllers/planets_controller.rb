class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
  end

end
