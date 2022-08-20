class CleanupPeriodDays < ActiveRecord::Migration[7.0]
  def change
    remove_column :period_day_symptoms, :period_day_id
  end
end
