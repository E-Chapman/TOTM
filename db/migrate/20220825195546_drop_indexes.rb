class DropIndexes < ActiveRecord::Migration[7.0]
  def up
    remove_column :physical_symptoms, :period_day_symptom_id
    remove_column :moods, :period_day_symptom_id
    remove_column :flows, :period_day_symptom_id
  end
end
