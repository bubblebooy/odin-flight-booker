class Booking < ApplicationRecord
  belongs_to :flight
  belongs_to :passenger

  validates :flight, presence: true
  validates :passenger, presence: true

  accepts_nested_attributes_for :flight, :passenger
end
