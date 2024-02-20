class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
    unless @place
      redirect_to "/places"
    end
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

end