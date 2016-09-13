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
    redirect_to new_session_path
  end
end
