class ReservationsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @car = Car.find(params[:reservation_id])
    @reservation.car = @car
    if @reservation.save
      redirect_to cars_path(@car)
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
