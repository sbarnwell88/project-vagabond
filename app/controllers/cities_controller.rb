class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end
  
  def create
    @city = City.create!(city_params)
    redirect_to cities_path
  end

  def show
    @city = City.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def city_params
  params.require(:city).permit(:name, :description, :image)
  end
end
