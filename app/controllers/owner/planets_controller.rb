module Owner
  class PlanetsController < ApplicationController
    def index
      @planets = current_user.planets
    end

    def new
      @planet = Planet.new
    end

    def create
      @planet = current_user.planets.new(planet_params)
      if @planet.save
        redirect_to owner_planets_path, notice: "Your planet is successfully created"
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def planet_params
      params.require(:planet).permit(:name, :content, :size, :galaxy, :rating, :kind, :price_per_day, :photo)
    end
  end
end
