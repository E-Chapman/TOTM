class DropEndDateColumnFromPeriods < ActiveRecord::Migration[7.0]
  def up 
    remove_column :periods, :end_date, :date
  end
end
