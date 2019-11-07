class Event < ApplicationRecord
    has_many :attendances, dependent: :destroy
    has_many :cadets, through: :attendances
    accepts_nested_attributes_for :attendances
    
    validates :eventDate, :primaryType, :subType, :presence => true
    
    validates :details,
        presence: true,
        length: {maximum: 500},
        allow_nil: false
    
    include PgSearch
    pg_search_scope :search_by_date, against: [:eventDate],
        using: {
            tsearch: {
                prefix: true
            }
        }
end
