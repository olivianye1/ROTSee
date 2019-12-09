class PagesController < ApplicationController
  skip_before_action :authorized
  def about
  end
  
  def contact
    redirect_to '/messages#new'
  end
end
