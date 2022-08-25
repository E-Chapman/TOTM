class PeriodDaySymptom < ApplicationRecord
  belongs_to :period_day
  belongs_to :symptom
  has_many :moods, :physical_symptoms
end
