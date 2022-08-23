class DropColumnsFromPeriods < ActiveRecord::Migration[7.0]
  def up
    remove_column :periods, :start_date, :date
  end
end
