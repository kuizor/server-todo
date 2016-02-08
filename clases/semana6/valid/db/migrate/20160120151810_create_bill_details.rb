class CreateBillDetails < ActiveRecord::Migration
  def change
    create_table :bill_details do |t|
      t.integer :quantity
      t.integer :total_price
      t.references :bill, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
