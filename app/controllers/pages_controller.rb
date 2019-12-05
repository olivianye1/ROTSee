class PagesController < ApplicationController
  skip_before_action :authorized
  def about
  end
  
end
