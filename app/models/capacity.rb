class Capacity < ApplicationRecord
  validates :client_number, presence: true, length: { minimum: 4, message: 'is too short (minimum is 4 characters)' },
                            numericality: { only_integer: true, message: 'is not a number' }, uniqueness: true
  validates :client_name, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true, message: 'is not a number' }
end
