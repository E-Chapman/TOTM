class DropPeriodDays < ActiveRecord::Migration[7.0]
  def up
    drop_table :period_days
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
