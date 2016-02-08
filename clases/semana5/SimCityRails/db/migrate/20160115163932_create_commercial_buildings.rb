class CreateCommercialBuildings < ActiveRecord::Migration
  def change
    create_table :commercial_buildings do |t|
      t.references :city, index: true, foreign_key: true
      t.string :name
      t.integer :required_level
      t.integer :capacity
      t.integer :position_x
      t.integer :position_y

      t.timestamps null: false
    end
  end
end
