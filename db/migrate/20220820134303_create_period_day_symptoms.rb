class CreatePeriodDaySymptoms < ActiveRecord::Migration[7.0]
  def change
    create_table :period_day_symptoms do |t|
      t.references :period_day, null: false, foreign_key: true

      t.timestamps
    end
  end
end
