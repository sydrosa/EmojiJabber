class SessionsController < ApplicationController
    def new 
      @user = User.new
    end


  def create
    @user = User.find_by(username: params[:user][:username])
      if !@user 
        # need to look into flash.now for error msg
        flash[:error] = "Sorry, we don't recognize that username."
        redirect_to new_session_path
      elsif !@user.authenticate(params[:user][:password])
        flash.now[:error] = "Something - that password is incorrect. Please try again!"
        redirect_to new_session_path
    else
      @user.authenticate(params[:user][:password])
      redirect_to user_path(@user)
    # need to change path 
    end
  end

  def destroy
    session.delete :username
    redirect_to root_url, notice: "Logged out!"
  end
end
