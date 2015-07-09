class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :email
      t.string :street_address
      t.string :city
      t.string :country
      t.string :postal_code
      t.string :facebook
      t.string :twitter

      t.timestamps null: false
    end
  end
end
