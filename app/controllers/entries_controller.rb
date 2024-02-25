class EntriesController < ApplicationController

  def new
    #render new place form
     @entry = Entry.new
     @place = Place.find_by({"id" => params["place_id"]})
     #render posts/new view with new Post form
  end

  def create
    # initiate a new place
    @entry = Entry.new
    # assign parameters for each user data
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["posted_on"]
    @entry["place_id"] = params["place_id"]
    #@entry["created_at"] = params["place_id"]
    #@entry["updated_at"] = params["updated_at"]
    @entry.save
    # redirect user to the same place that the user was before
    redirect_to "/places/#{@entry["place_id"]}"
  end

end
