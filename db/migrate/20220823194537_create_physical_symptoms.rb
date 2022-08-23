class CreatePhysicalSymptoms < ActiveRecord::Migration[7.0]
  def change
    create_table :physical_symptoms do |t|
      t.references :period_day_symptom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
