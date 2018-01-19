class ScientistsController < ApplicationController
  def index
    @scientists = Scientist.all
  end

  def new
    @scientist = Scientist.new
  end

  def edit
    @scientist = Scientist.find params[:id]
  end

  def show
    @scientist = Scientist.find_by :id => params[:id]
  end


  def create
    scientist = Scientist.create scientist_params
    if scientist.save
      redirect_to scientist
    else
      redirect_to root
    end
  end


  def update
    scientist = Scientist.find params[:id]
    scientist.update scientist_params
    redirect_to scientist
  end


  def destroy
    scientist = Scientist.find params[:id]
    scientist.destroy
    redirect_to scientists_path
  end





  private
  def scientist_params
    params.require(:scientist).permit(:name, :born, :died, :city, :photo)
  end
end
