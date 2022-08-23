class AddNameToMoods < ActiveRecord::Migration[7.0]
  def change
    add_column :moods, :name, :string
  end
end
