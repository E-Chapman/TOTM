class AddStartDateToPeriods < ActiveRecord::Migration[7.0]
  def change
    add_column :periods, :start_date, :date
  end
end
