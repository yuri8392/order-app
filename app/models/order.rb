class Order < ApplicationRecord
  validates :order_number, presence: true
  validates :status, presence: true
  validates :order_date, presence: true
  validates :deadline_date, presence: true
  validates :status, presence: true
  belongs_to :apartment
end
