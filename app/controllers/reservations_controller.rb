class ReservationsController < ApplicationController

  def my_reservations
    @reservation = Reservation.all
  end
end
