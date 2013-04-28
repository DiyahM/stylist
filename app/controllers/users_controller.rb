class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    if params[:id] == current_user.id.to_s
      @user = User.find(params[:id])
    else
      redirect_to root_url, :notice => "You are not authorized to view that page"
    end
  end
end
