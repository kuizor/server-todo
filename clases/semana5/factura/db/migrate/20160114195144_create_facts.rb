class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.float :subtotal
      t.float :iva
      t.float :total

      t.timestamps null: false
    end
  end
end
