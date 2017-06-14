class SessionsController < ApplicationController

  def new
  end

  def create
    username = params.permit(:name).values.first
    if username.nil? || username == ''
      redirect_to login_path
    else
      session[:name] = username
      redirect_to "/user"
    end
  end

  def home
    @username = current_user
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end
