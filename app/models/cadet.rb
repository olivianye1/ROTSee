class Cadet < ApplicationRecord
    has_many :attendances, dependent: :destroy
    has_many :events, through: :attendances
    has_secure_password
    validates :password, confirmation: { case_sensitive: true }
    validates :username, :uniqueness => { :case_sensitive => false }
    
    validates :school, :position, :course, :gradYear, :flight, :presence => true
    
    validates :lastName,
        presence: true,
        length: {maximum: 50},
        allow_nil: false
        
    validates :firstName,
        presence: true,
        length: {maximum: 50},
        allow_nil: false
        
    validates :email,
        presence: true,
        length: {maximum: 100},
        allow_nil: false,
        format: { with: URI::MailTo::EMAIL_REGEXP } 
        
    validates :phoneNumber,
        presence: true,
        length: {maximum: 50},
        allow_nil: false
        
    validates :username,
        presence: true,
        length: {maximum: 100},
        allow_nil: false,
        :uniqueness => { :case_sensitive => false }
    
    validates :password,
        :if => :password,
        presence: true,
        length: {maximum: 100},
        allow_nil: false
    
    
    include PgSearch
    pg_search_scope :search_by_full_name, against: [:firstName, :lastName],
        using: {
            tsearch: {
                prefix: true
            }
        }
end

