class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.float :idrating
      t.integer :point
      t.boolean :active
      t.text :comment
      t.references :parking

      t.timestamps null: false
    end
  end
end
