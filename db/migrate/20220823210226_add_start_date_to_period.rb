class AddStartDateToPeriod < ActiveRecord::Migration[7.0]
  def up
    add_column :periods, :start_date, :date
  end
end
