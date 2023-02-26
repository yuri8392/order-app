class Capacity < ApplicationRecord
  validates :client_number, presence: true
  validates :client_name, presence: true
  validates :capacity, presence: true
  # belongs_to :order, foreign_key: "client_number",  primary_key:"cliennt_number",class_name: 'Capacity', required: false
  # belongs_to :order
end
