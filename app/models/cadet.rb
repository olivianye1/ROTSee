class Cadet < ApplicationRecord
    has_many :attendances, dependent: :destroy
    has_many :events, through: :attendances
    
    include PgSearch
    pg_search_scope :search_by_full_name, against: [:firstName, :lastName],
        using: {
            tsearch: {
                prefix: true
            }
        }
end

