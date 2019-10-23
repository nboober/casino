class ApplicationController < ActionController::Base
  
  helper_method :current_user

  def index
  end

  def tokens

  end

  def login

  end

  def process_login
      user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_path
    else
      flash.now["notice"] = "No user found with that username and password."
      render :login
    end
  end

  def logout
    session.clear
    redirect_to home_path
  end

  def current_user
      User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

end
