class AddNameToMood < ActiveRecord::Migration[7.0]
  def up
    add_column :moods, :name, :string
  end
end
