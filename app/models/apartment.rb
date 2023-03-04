class Apartment < ApplicationRecord
  validates :apartment_number, presence: true
  validates :room_number, presence: true
  validates :postal_code, presence: true
  validates :client_number, presence: true
  validates :client_name, presence: true
  has_one :order
  has_one :not_ordering
end
