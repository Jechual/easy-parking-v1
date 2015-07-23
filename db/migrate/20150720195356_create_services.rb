class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :schedule
      t.decimal :price
      t.string :contact
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
