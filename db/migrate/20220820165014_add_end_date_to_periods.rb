class AddEndDateToPeriods < ActiveRecord::Migration[7.0]
  def change
    add_column :periods, :end_date, :date
  end
end
