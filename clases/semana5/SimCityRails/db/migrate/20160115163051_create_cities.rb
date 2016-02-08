class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :population
      t.integer :happines_percentage
      t.references :mayor, index: true, foreign_key: true
      t.integer :money
      t.integer :level

      t.timestamps null: false
    end
  end
end
