class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
  end

  def new
  end

  def create
    @place = Place.new
    # use information entered by user
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end

  def error
    render 'not_found', status: :not_found
  end

end