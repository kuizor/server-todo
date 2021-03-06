class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.references :product, index: true, foreign_key: true
      t.integer :quantity
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
