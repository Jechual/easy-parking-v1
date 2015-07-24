class CreateParkings < ActiveRecord::Migration
  def change
    create_table :parkings do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :telephone
      t.string :schedule
      t.string :price
      t.string :availability
      t.string :comments
      t.string :image
      t.string :active

      t.timestamps null: false
    end
  end
end
