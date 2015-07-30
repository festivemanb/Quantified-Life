class CreateDailyEntries < ActiveRecord::Migration
  def change
    create_table :daily_entries do |t|
      t.date :date
      t.string :mood
      t.string :activity
      t.integer :drinks
      t.integer :people_talked
      t.integer :rating
      t.integer :coffee
      t.string :notes
      t.string :text

      t.timestamps null: false
    end
  end
end
