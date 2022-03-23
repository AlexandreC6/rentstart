class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index, :create, :new]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path(@car)
    else
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit(:brand, :fuel, :price, :description, :user_id)
  end
end
