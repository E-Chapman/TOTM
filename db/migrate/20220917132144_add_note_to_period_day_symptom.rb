class AddNoteToPeriodDaySymptom < ActiveRecord::Migration[7.0]
  def change
    add_column :period_day_symptoms, :notes, :text
  end
end
