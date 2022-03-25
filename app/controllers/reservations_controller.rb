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
      redirect_to my_reservations_path
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to '/reservations/my_reservations', :notice => "Your reservation has been deleted"

  end
  def edit
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :car_id, :user_id)
  end
end
