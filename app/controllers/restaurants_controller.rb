class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]



def index
  @restaurants = Restaurant.all
end

def new
  @restaurant = Restaurant.new(restaurant_params)
end

def show
  @restaurant = restaurants.find(params[:id])
end

def edit
  @restaurant = restaurants.find(params[:id])
end

def create
  @restaurant = Restaurant.new(restaurant_params)
  if @restaurant.save
    redirect_to restaurant_path(@restaurant)
  else
    render :new
  end
end

def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

def destroy
  @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
end

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

end
