class CreateTempSps < ActiveRecord::Migration[7.0]
  def change
    create_table :temp_sps do |t|
      t.belongs_to :temp_dep, null: false, foreign_key: true
      t.string :dep_name
      t.string :typology
      t.string :name
      t.text :description
      t.integer :floor
      t.integer :number_of_seats
      t.string :state

      t.timestamps
    end
  end
end
