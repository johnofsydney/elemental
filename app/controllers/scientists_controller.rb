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
    # raise
    if params["scientist"]["photo"].nil?
    else
      cloudinary = Cloudinary::Uploader.upload( params[ "scientist" ][ "photo" ] )
      scientist.photo = cloudinary["url"]
    end
    scientist.update scientist_params
    redirect_to scientist
  end


  def destroy
    scientist = Scientist.find params[:id]
    scientist.destroy
    redirect_to scientists_path
  end


  def add_element
    scientist = Scientist.find params[:id]
    element = Element.find params[:element_id]
    scientist.elements << element
    redirect_to scientist
  end

  def remove_element
    scientist = Scientist.find params[:id]
    scientist.elements.delete params[:element_id]
    redirect_to scientist
  end

  # def update
  #   job = Job.find params[:id]
  #   # raise
  #   if params["job"]["photo"].nil?
  #   else
  #     cloudinary = Cloudinary::Uploader.upload( params[ "job" ][ "photo" ] )
  #     job.photo = cloudinary["url"]
  #   end
  #   job.update job_params
  #   redirect_to job
  # end






  private
  def scientist_params
    params.require(:scientist).permit(:name, :born, :died, :city, :country_id)
  end
end
