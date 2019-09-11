class FavoritesController < ApplicationController
    def index
        @favorites = Favorite.all
    end

    def show
        @favorite = Favorite.find(params[:id])
    end

    def create
       
        @favorite = Favorite.create(favorite_params)
        redirect_to room_path(@favorite.room.id)
        
    end

    def destroy
        #im not sure with this one yet.
    end

    private

    def favorite_params  
        
        params.require(:favorite).permit(:room_id, :user_id)
    end


end
