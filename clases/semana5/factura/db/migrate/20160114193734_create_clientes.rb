class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.integer :telefono
      t.string :direccion
      t.string :rif
      t.string :tipo

      t.timestamps null: false
    end
  end
end
