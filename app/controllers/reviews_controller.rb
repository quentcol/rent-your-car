class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_car, only: [:index, :new, :create]

  def index
    @reviews = current_user.reviews.where(car: @cars)
  end

  def new
    @review = current_user.reviews.new
  end

  def create
    @review = current_user.reviews.new(review_params)
    @review.car = @car

    if @revuew.save
      redirect_to car_reviews_path(@car), notice: "Review was successfully created."
    else
      render :new
    end
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
