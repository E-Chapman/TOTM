class PeriodDaySymptom < ApplicationRecord
  belongs_to :period_day
  has_many :physical_symptoms
end
