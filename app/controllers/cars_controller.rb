class CarsController < ApplicationController
  def index
    @people = Person.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new params[:car]
    saved = @car.save

    respond_to do |format|
      format.json { render :json => saved }
    end
  end

  def show
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update_attributes(params[:car])
    redirect_to '/people'
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
  end
end
