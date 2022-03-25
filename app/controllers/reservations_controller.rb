class ReservationsController < ApplicationController
  def my_reservations
    @reservations = Reservation.all
  end

  def new
    @car = Car.find(params[:car_id])
    @reservations = Reservation.new
  end

  def create
    @reservations = Reservation.new(reservation_params)
    @car = Car.find(params[:car_id])
    @reservations.car = @car
    @user = current_user.id
    @reservations.user_id = @user
    if @reservations.save
      # raise
      redirect_to car_path(params[:car_id])
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservations).permit(:start_date, :end_date)
  end

end
