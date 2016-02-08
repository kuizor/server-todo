class CreateMaterialRelations < ActiveRecord::Migration
  def change
    create_table :material_relations do |t|
      t.references :complex_material, index: true, foreign_key: true
      t.references :basic_material, index: true, foreign_key: true
      t.integer :required_quantity

      t.timestamps null: false
    end
  end
end
