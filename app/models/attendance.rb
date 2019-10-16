class Attendance < ApplicationRecord
  belongs_to :cadet, optional: true
  belongs_to :event, optional: true
end
