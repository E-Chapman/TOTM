class Flow < ApplicationRecord
  has_many :period_day_symptoms
  validates :name, :emoji, presence: true
end
