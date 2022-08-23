class DropSymptoms < ActiveRecord::Migration[7.0]
  def change
    drop_table :symptoms
  end
end
