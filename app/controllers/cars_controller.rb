class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car = Car.new params[:car]	
    if @car.save
      redirect_to @car
    else
      render:new
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
