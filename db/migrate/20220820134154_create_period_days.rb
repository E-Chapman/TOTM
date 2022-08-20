class CreatePeriodDays < ActiveRecord::Migration[7.0]
  def change
    create_table :period_days do |t|
      t.references :period, null: false, foreign_key: true

      t.timestamps
    end
  end
end
