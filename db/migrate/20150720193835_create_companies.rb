class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.string :contact
      t.string :email

      t.timestamps null: false
    end
  end
end
