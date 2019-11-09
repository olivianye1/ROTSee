class ApplicationController < ActionController::Base
    before_action :authorized
    helper_method :current_cadet
    helper_method :logged_in?
  
    def current_cadet    
        Cadet.find_by(id: session[:cadet_id])  
    end
    
    def logged_in?
       !current_cadet.nil?  
    end
    
    def authorized
        redirect_to '/welcome' unless logged_in?
    end
end
