class DeleteSymptoms < ActiveRecord::Migration[7.0]
  def up
    remove_column :period_day_symptoms, :symptom_id
    drop_table :symptoms
  end
end
