class CreateSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :seats do |t|
      t.belongs_to :space, null: false, foreign_key: true
      t.string :dep_name
      t.string :typology
      t.string :space_name
      t.integer :position
      t.datetime :start_date
      t.datetime :end_date
      t.string :state

      t.timestamps
    end
  end
end
