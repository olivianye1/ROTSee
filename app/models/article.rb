class Article < ApplicationRecord
  
  validates :title,
    presence: true,
    length: {maximum: 256},
    allow_nil: false
    
  
  validates :body,
    presence: true,
    length: {maximum: 2000},
    allow_nil: false
    

  validates :tag,
    presence: true,
    length: {maximum: 50},
    allow_nil: false
  
end
