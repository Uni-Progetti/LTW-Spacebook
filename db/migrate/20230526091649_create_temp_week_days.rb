class CreateTempWeekDays < ActiveRecord::Migration[7.0]
  def change
    create_table :temp_week_days do |t|
      t.belongs_to :temp_dep, null: false, foreign_key: true
      t.string :dep_name
      t.string :day
      t.string :state
      t.datetime :apertura
      t.datetime :chiusura

      t.timestamps
    end
  end
end
