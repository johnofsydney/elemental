class ElementsController < ApplicationController
  def index
    @elements = Element.all

  end

  def new
    @element = Element.new
  end

  def edit
    @element = Element.find params[:id]
  end

  def show
    # This is where we take advantage of the fact that wikipedia URLs are quite predicatable *though not 100% so*
    # to scrape data using nokogiri, using the element name as our only variable.
    # it's not perfecr but it allows some practice in scraping without getting bogged down in the detail.
    @element = Element.find_by :id => params[:id]
    require 'open-uri'
    @base_url = 'https://en.wikipedia.org/wiki/'
    @wiki_para = Nokogiri::HTML(open( @base_url + @element.name )).css('.mw-parser-output p')[0]
  end


  def create
    element = Element.create element_params
    if element.save
      redirect_to element
    else
      redirect_to root
    end
  end


  def update
    element = Element.find params[:id]
    element.update element_params
    redirect_to element
  end


  def destroy
    element = Element.find params[:id]
    element.destroy
    redirect_to elements_path
  end



  def remove_scientist
    element = Element.find params[:id]
    element.scientists.delete params[:scientist_id]
    redirect_to element
  end


  def remove_country
    element = Element.find params[:id]
    country = Country.find params[:country_id]
    # raise
    Resource.where(country_id: country.id, element_id: element.id).destroy_all
    redirect_to element
  end



  def add_child
    # raise
    element = Element.find params[:id]
    if (params[:scientist_id])
      scientist = Scientist.find params[:scientist_id]
      element.scientists << scientist
    elsif (params[:country_id])
      country = Country.find params[:country_id]
      quantity = params[:quantity]
      # element.countries << country
      Resource.create!(quantity: quantity, country_id: country.id, element_id: element.id )
    end
    redirect_to element
  end




  private
  def element_params
    params.require(:element).permit(:name, :description, :protons, :electrons, :described_date, :year)
  end
end
