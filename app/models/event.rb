class Event < ApplicationRecord
    has_many :attendances, dependent: :destroy
    has_many :cadets, through: :attendances
    accepts_nested_attributes_for :attendances
end
