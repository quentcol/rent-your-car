class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_car, only: [:index, :new, :create]

  def index
    @bookings = current_user.bookings.where(car: @cars)
  end

  def new
    @booking = current_user.bookings.new
  end

  def create
    @booking = current_user.bookings.new(booking_params)
    @booking.car = @car

    if @booking.save!

      redirect_to @car, notice: "Booking was successfully created."
    else
      render :new
    end
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end
end
