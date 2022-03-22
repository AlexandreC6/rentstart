class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def new
    @car = Car.new()
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end






  private

  def car_params
    params.require(:car).permit(:brand, :type, :price, :description)
#     if params[:car]
#       @members = @members.select { |member| member.start_with?(params[:member]) }
#   end
  end
end
