class HomeController < ApplicationController
  def show
    @seats = Seat.not_taken
  end
end
