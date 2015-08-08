class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.string :active
      t.references :parking, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
