class AddEmojiToMoods < ActiveRecord::Migration[7.0]
  def change
    add_column :moods, :emoji, :string
  end
end
