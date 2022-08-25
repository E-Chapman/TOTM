class Mood < ApplicationRecord
  belongs_to :period_day_symptom
  validates :name, :emoji, presence: true
end
