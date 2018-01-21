class CountriesController < ApplicationController
  def index
    @country = Country.all
  end

  def new
    @country = Country.new
  end

  def edit
    @country = Country.find params[:id]
  end

  def show
    @country = Country.find_by :id => params[:id]
  end

  def create
    country = Country.create country_params
    if country.save
      redirect_to country
    else
      redirect_to root
    end
  end

  def update
    country = Country.find params[:id]
    country.update country_params
    redirect_to country
  end

  def destroy
    country = Country.find params[:id]
    country.destroy
    redirect_to countries_path
  end

  private
  def country_params
    params.require(:country).permit(:name)
  end

end
