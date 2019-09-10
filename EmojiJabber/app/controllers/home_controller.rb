class HomeController < ApplicationController
  
  def index
    @user = User.find_by(params[:id])
    # redirect_to users_path(@user)
  end


end
