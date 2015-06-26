class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :duration_days
      t.decimal :price
      t.integer :max_class_size
      t.boolean :full_time, default: true
      t.string :format
      t.references :school, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
