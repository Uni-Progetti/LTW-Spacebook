class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :manager
      t.string :via
      t.string :civico
      t.string :cap
      t.string :citta
      t.string :provincia
      t.string :latitude
      t.string :longitude
      t.string :dep_map
      t.string :dep_event
      t.text :description
      t.integer :floors
      t.integer :number_of_spaces

      t.timestamps
    end
  end
end
