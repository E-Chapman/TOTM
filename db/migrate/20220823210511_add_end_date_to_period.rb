class AddEndDateToPeriod < ActiveRecord::Migration[7.0]
  def up 
    add_column :periods, :end_date, :date
  end
end
