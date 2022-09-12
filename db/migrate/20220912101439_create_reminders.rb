class CreateReminders < ActiveRecord::Migration[7.0]
  def change
    create_table :reminders do |t|
      t.text :body
      t.integer :user_id
      t.datetime :reminder_date

      t.timestamps
    end
  end
end
