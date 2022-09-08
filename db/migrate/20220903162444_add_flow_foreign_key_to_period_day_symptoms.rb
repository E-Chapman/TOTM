class AddFlowForeignKeyToPeriodDaySymptoms < ActiveRecord::Migration[7.0]
  def change
    add_reference :period_day_symptoms, :flow, null: false, foreign_key: true
  end
end
