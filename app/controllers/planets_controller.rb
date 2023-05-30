class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def show
    @planets = Planet.new
  end

  def index
    @planets = Planet.all
  end
end
