class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :department, null: false, foreign_key: true
      t.belongs_to :space, null: false, foreign_key: true
      t.belongs_to :seat, null: false, foreign_key: true
      t.string :email
      t.string :dep_name
      t.string :typology
      t.string :space_name
      t.integer :floor
      t.integer :seat_num
      t.datetime :start_date
      t.datetime :end_date
      t.string :state
      t.string :is_sync

      t.timestamps
    end
  end
end
