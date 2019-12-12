class Task < ApplicationRecord
    belongs_to :cadet
    
    validates :date_created, :date_due, :completed, :cadet_id, :presence => true
    
    validates :description,
        presence: true,
        length: {maximum: 2000},
        allow_nil: false
end
