class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def edit
    @country = Country.find params[:id]
  end

  def show
    @country = Country.find_by :id => params[:id]
    require 'open-uri'
    @base_url = 'https://en.wikipedia.org/wiki/'
    @wiki_para = Nokogiri::HTML(open( @base_url + @country.name )).css('.mw-parser-output p')[0]

    if @wiki_para.include? "oordinates"
      @wiki_para = Nokogiri::HTML(open( @base_url + @country.name )).css('.mw-parser-output p')[1]
    end
    
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
