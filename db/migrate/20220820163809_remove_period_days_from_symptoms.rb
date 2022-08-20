class RemovePeriodDaysFromSymptoms < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :period_day_symptoms, :period_days
    add_reference :period_day_symptoms, :period, index: true
  end
end
