class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit]

  def review
    @review = @restaurant.review

  end

  def index
    @restaurant = Restaurant.all
  end

  def show
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
