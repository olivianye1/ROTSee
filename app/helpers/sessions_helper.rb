module SessionsHelper
  
  def logged_in?
       !current_cadet.nil?  
    end
end
