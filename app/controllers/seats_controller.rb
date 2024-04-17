# frozen_string_literal: true

class SeatsController < ApplicationController
  def update
    @seat = Seat.find(params[:id])

    return redirect_to root_path if !@seat.taken && @seat.take

    flash[:error] = 'Seat is already taken'
    redirect_to root_path
  end
end
