class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]
  def new
  end

  def create
    @cadet = Cadet.find_by(username: params[:username])
    if @cadet && @cadet.authenticate(params[:password])
      session[:cadet_id] = @cadet.id
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end

  def login
  end

  def welcome
  end
  
  def page_requires_login
  end
end
