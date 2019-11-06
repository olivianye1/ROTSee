class Attendance < ApplicationRecord
    belongs_to :cadet
    belongs_to :event
    
    validates :attended, :cadet_id, :event_id, :presence => true
end
