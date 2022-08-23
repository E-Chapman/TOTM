class AddMoodIdToPeriodDaySymptoms < ActiveRecord::Migration[7.0]
  def change
    add_reference :period_day_symptoms, :mood, null: false, foreign_key: true
  end
end
