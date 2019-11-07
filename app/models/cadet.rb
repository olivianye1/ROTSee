class Cadet < ApplicationRecord
    has_many :attendances, dependent: :destroy
    has_many :events, through: :attendances
    
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
        allow_nil: false
        
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

