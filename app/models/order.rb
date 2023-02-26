class Order < ApplicationRecord
  validates :order_number, presence: true
  validates :status, presence: true
  validates :order_date, presence: true
  validates :deadline_date, presence: true
  belongs_to :apartment
  # has_many :capacities
  # belongs_to :capacity, foreign_key: "client_number",  primary_key:"cliennt_number",class_name: 'Capacity', required: false
end
