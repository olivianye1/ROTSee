class Event < ApplicationRecord
  has_many :attendances
  has_many :cadets, through: :attendances
end
