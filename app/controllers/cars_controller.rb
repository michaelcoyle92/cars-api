class CarsController < ApplicationController
  def index
    cars = Car.all
    render json: cars.as_json
  end

  def show
    car = Car.find_by(id: params[:id])
    render car
  end

  def create
    car = Car.new(
      make: params[:make]
      model: params[:model]
      color: params[:color]
      msrp: params[:msrp]
      img_url: params[:img_url]
    )

    car.save
  end
end
