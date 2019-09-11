class RoomsController < ApplicationController
    def index
        # byebug
        @rooms = Room.all
    end

    def show
        @room = Room.find(params[:id])
        @favorite = Favorite.new

    end

    def new
        @room = Room.new
    end

    def create
        @room = Room.create(room_params)
    end


    def destroy
        #im not sure with this one yet.
    end

    private

    def room_params  
        params.require(:room).permit(:name, :user_id)
    end

end
