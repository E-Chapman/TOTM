class AddNameToPhysicalSymptoms < ActiveRecord::Migration[7.0]
  def change
    add_column :physical_symptoms, :name, :string
    add_column :physical_symptoms, :emoji, :string
  end
end
