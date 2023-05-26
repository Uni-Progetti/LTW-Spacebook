class CreateWeekDays < ActiveRecord::Migration[7.0]
  def change
    create_table :week_days do |t|
      t.belongs_to :department, null: false, foreign_key: true
      t.string :dep_name
      t.string :day
      t.string :state
      t.datetime :apertura
      t.datetime :chiusura

      t.timestamps
    end
  end
end
