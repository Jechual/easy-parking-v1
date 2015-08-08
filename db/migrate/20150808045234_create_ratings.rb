class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :date
      t.integer :score
      t.string :comment
      t.string :active
      t.references :parking, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
