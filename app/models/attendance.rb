class Attendance < ApplicationRecord
    belongs_to :cadet
    belongs_to :event
end
