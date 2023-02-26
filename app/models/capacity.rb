class Capacity < ApplicationRecord
  validates :client_number, presence: true
  validates :client_name, presence: true
  validates :capacity, presence: true
end
