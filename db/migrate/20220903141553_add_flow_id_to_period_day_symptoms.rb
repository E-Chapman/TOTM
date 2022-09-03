class AddFlowIdToPeriodDaySymptoms < ActiveRecord::Migration[7.0]
  def up 
    add_column :period_day_symptoms, :flow_id, :bigint
  end
end
