class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.authenticate(params[:email].params[:password])
    if @user
      flash[:notice] = "You have logged on."
      session[:user_id] = @user.id
      redirect_to questions_path
    else
      flash[:alert] = "Wrong username or password."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've been logged out successfully."
    render :index
  end
end
