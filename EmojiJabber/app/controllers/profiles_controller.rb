class ProfilesController < ApplicationController
    def index
        @profiles = Profile.all
    end

    def show
        @profile = Profile.find(params[:id])
    end

    def new
        @profile = Profile.new
    end

    def create
        
            @user = User.find_by(username: params[:username])
            return head(:forbidden) unless @user.authenticate(params[:password])
            profile[:user_id] = @user.id
        
    end


    def destroy
        #im not sure with this one yet.
    end

    private

    def profile_params  
        params.require(:profile).permit(:user_id, :bio, :default_picture)
    end

end
