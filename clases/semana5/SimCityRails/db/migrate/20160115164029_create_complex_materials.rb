class CreateComplexMaterials < ActiveRecord::Migration
  def change
    create_table :complex_materials do |t|
      t.string :name
      t.references :commercial_building, index: true, foreign_key: true
      t.integer :required_level

      t.timestamps null: false
    end
  end
end
