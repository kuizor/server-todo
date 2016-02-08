class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.integer :phone, limit: 8
      t.string :email
      t.string :rif
      t.string :type

      t.timestamps null: false
    end
  end
end
