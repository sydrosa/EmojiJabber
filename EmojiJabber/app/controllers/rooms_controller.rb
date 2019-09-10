class RoomsController < ApplicationController
    def index
        @rooms = Room.all
    end

    def show
        @room = Room.find(params[:id])
    end

    def new
        @Room = Room.new
    end

    def create
        @Room = Room.create(favorite_params)
    end


    def destroy
        #im not sure with this one yet.
    end

    private

    def room_params  
        params.require(:room).permit(:name, :user_id)
    end

end
