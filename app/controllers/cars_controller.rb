class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def new
    @car = Car.new()
  end

  def create
    @car = List.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end






  private

  def car_params
    params.require(:list).permit(:brand, :type, :price)
  end
end
