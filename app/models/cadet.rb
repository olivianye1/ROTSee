class Cadet < ApplicationRecord
    has_many :attendances, dependent: :destroy
    has_many :events, through: :attendances
    
    validates :lastName, :firstName, :email, :phoneNumber, :school, :position, :course, :gradYear, :flight, :username, :password, :presence => true
    validates :username, :uniqueness => { :case_sensitive => false }
    
    include PgSearch
    pg_search_scope :search_by_full_name, against: [:firstName, :lastName],
        using: {
            tsearch: {
                prefix: true
            }
        }
end

