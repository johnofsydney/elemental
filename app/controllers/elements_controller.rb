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
    @element = Element.find_by :id => params[:id]
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

  private
  def element_params
    params.require(:element).permit(:name, :description, :protons, :electrons, :described_date)
  end
end
