module Owner
  class PlanetsController < ApplicationController
    def index
      @planets = current_user.planets
    end

    def new
      @planet = Planet.new
    end

    def create
    end
  end
end
