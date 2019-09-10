class FavoritesController < ApplicationController
    def index
        @favorites = Favorite.all
    end

    def show
        @favorite = Favorite.find(params[:id])
    end

    def new
        @favorite = Favorite.new
    end

    def create
        @favorite = Favorite.create(favorite_params)
    end


    def destroy
        #im not sure with this one yet.
    end

    private

    def favorite_params  
        params.require(:favorite).permit(:room_id, :user_id)
    end


end
