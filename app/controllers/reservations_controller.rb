class ReservationsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @car = Car.find(params[:car_id])
    @reservation.car = @car
    @user = current_user.id
    @reservation.user_id = @user
    if @reservation.save
      redirect_to cars_path(@car_id)
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
