class Message < ApplicationRecord
  validates_presence_of :name, :detachment, :subject, :body
  
  validates :email,
    presence: true,
    length: {maximum: 100},
    allow_nil: false,
    format: { with: URI::MailTo::EMAIL_REGEXP } 
end
