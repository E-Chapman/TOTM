class CreateFlows < ActiveRecord::Migration[7.0]
  def change
    create_table :flows do |t|
      t.string :name
      t.string :emoji
      t.references :period_day_symptom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
