class ReservationsController < ApplicationController
  def my_reservations
    @reservation = Reservation.all
  end
  
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
      # raise
      redirect_to car_path(params[:car_id])
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

end
