class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true
      t.integer :quantity
      t.integer :subtotal
      t.integer :iva
      t.integer :total

      t.timestamps null: false
    end
  end
end
