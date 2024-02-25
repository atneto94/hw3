class PlacesController < ApplicationController

  def index
    #Find all Places rows
    @places = Place.all
    #Render places/index view
  end

  def show
    #Find a Place
    @place = Place.find_by({"id" => params["id"]})
    #unless @place
    #  redirect_to "/places"
    #end
    #Render Place show view
    @entries = Entry.where({"place_id" => params["id"]})
  end

  def new
    #Render view new Place form
  end

  def create
    #Start with a new place
    @place = Place.new
    # use information entered by user
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end

end