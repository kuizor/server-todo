class CreateBasicMaterials < ActiveRecord::Migration
  def change
    create_table :basic_materials do |t|
      t.string :name
      t.string :picture
      t.integer :required_level

      t.timestamps null: false
    end
  end
end
