class Article < ApplicationRecord
  
  validates :date, :body, :title, :tag => true
  
    
end
