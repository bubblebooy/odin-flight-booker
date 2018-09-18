class Passenger < ApplicationRecord
  has_many :bookings
  has_many :flights, through: :appointments

  validates :email, presence: true
  validates :name, presence: true
end
