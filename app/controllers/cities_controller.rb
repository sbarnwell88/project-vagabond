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
    @city = City.friendly.find(params[:id])
  end

  def edit
    @city = City.friendly.find(params[:id])
  end

  def update
    @city = City.friendly.find(params[:id])
    @city.update(city_params)

    redirect_to cities_path(@city)
  end

  def destroy
    @city = City.friendly.find(params[:id])
    @city.destroy

    redirect_to cities_path
  end

  private
  def city_params
  params.require(:city).permit(:name, :description, :image)
  end
end
