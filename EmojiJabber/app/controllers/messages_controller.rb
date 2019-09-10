class MessagesController < ApplicationController
    

    def new
        @messages = Message.new
    end

    def create
        @message = message.create(favorite_params)
    end


    

    private

    def favorite_params  
        params.require(:message).permit(:content, :room_id, :user_id)
    end

end
