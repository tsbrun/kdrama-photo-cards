class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end

  def logout
    session.delete :user_id
    redirect_to login_path
  end

  def googleAuth 
    # Get access tokens from the google server
    access_token = request.env["omniauth.auth"]
    @user = User.from_omniauth(access_token)
    session[:user_id] = @user.id
    #log_in(user) => presuming we have a log_in method? Maybe make one? For now, just do it manually.
    # Access_token is used to authenticate request made from the rails app to the google server
    # @user.google_token = access_token.credentials.token => only need to do this if using google api
    # Refresh_token to request new access_token 
    # Note: Refresh_token only sent once during the first request
    refresh_token =  access_token.credentials.refresh_token
    @user.google_refresh_token = refresh_token if refresh_token.present?
    @user.save 
    redirect_to welcome_path
  end

  def welcome
  end
end
