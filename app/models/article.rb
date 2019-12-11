class Article < ApplicationRecord
  
  validates :date => true
    
  validates :body,
    presence: true,
    length: {maximum: 2000},
    allow_nil: false
  
  validates: :title,
    presence: true,
    length: {maximum: 250},
    allow_nil: false

  validates :tag,
    presence: true,
    length: {maximum: 50},
    allow_nil: false
    
end
