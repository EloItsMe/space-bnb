module Owner
  class ReservationsController < ApplicationController
    def index
      @planets = Planet.where(owner: current_user)
    end
  end
end
