class PlacesController < ApplicationController

    def index
        @places = Place.all
      end
    
      def new
        @place = Place.new
      end
    
      def create
        @place = Post.new
        @place["name"] = params["place"]["title"]
        @place.save
        redirect_to "/places"
      end    

end
