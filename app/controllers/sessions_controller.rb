class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]
  def new
  end

  def create
    @cadet = Cadet.find_by(username: params[:username])
    if @cadet && @cadet.authenticate(params[:password])
      session[:cadet_id] = @cadet.id
      redirect_to '/welcome'
      flash[:notice] = "You have been signed in as #{@cadet.username}."
    else
      redirect_to '/login'
    end
  end

  def login
  end
  
  def destroy
    session.delete(:cadet_id)
    @current_cadet = nil
    redirect_to '/welcome'
    flash[:notice] = "You have been logged out."
  end

  def welcome
  end
  
  def page_requires_login
  end
end
