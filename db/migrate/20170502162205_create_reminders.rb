class CreateReminders < ActiveRecord::Migration[5.0]
  def change
    create_table :reminders do |t|
      t.string :name
      t.string :email
      t.date :date_of_birth

      t.timestamps
    end
  end
end
