class ReservationsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @reservation = Reservation.new
  end

  def create

  end
end
