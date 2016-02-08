class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :date
      t.integer :subtotal
      t.integer :tax
      t.integer :total
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
