class Memo < ApplicationRecord
  validates :title, presence: true
  validates :memo, presence: true
  belongs_to :user
end
