class Task < ApplicationRecord
    belongs_to :cadet
    
    validates :date_created, :date_due, :description, :completed, :cadet_id, :presence => true
end
