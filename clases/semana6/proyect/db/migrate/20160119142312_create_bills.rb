class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.integer :rif
      t.integer :phone
      t.string :address
      t.integer :total

      t.timestamps null: false
    end
  end
end
