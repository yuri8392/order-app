class Capacity < ApplicationRecord
  validates :client_number, presence: true, length: { minimum: 4 , message: 'は4桁以上の半角数字で入力してください'}, numericality: { only_integer: true, message: 'は半角数字で入力してください' }, uniqueness: true
  validates :client_name, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true, message: 'は半角数字で入力してください' }
end
