class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price, limit: 8
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
