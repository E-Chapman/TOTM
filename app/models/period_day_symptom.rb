class PeriodDaySymptom < ApplicationRecord
  belongs_to :period
  belongs_to :physical_symptom
  belongs_to :mood
  belongs_to :flow
end
