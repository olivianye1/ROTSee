class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]
  def new
  end

  def create
    @cadet = Cadet.find_by(username: params[:username])
   if @cadet && @cadet.authenticate(params[:password])
        if @cadet.approved == true
            session[:cadet_id] = @cadet.id
            redirect_to '/welcome', info: "Successful Login"
        else
            redirect_to '/login', danger: "Your account has not been approved yet."
        end
   else
     redirect_to '/login', danger: "Invalid username and/or password."
   end
  end

  def login
  end
  
  def destroy
    session.delete(:cadet_id)
    @current_cadet = nil
    redirect_to '/welcome', info: "You have been logged out."
  end

  def welcome
  end
  
  def page_requires_login
  end
end
