class CreateMayors < ActiveRecord::Migration
  def change
    create_table :mayors do |t|
      t.string :name
      t.string :last_name
      t.integer :ref_number

      t.timestamps null: false
    end
  end
end
