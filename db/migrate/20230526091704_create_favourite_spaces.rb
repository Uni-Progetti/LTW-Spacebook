class CreateFavouriteSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :favourite_spaces do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :department, null: false, foreign_key: true
      t.belongs_to :space, null: false, foreign_key: true
      t.string :email
      t.string :dep_name
      t.string :typology
      t.string :space_name

      t.timestamps
    end
  end
end
