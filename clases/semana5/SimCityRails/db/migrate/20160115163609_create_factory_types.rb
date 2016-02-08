class CreateFactoryTypes < ActiveRecord::Migration
  def change
    create_table :factory_types do |t|
      t.string :name
      t.integer :price
      t.integer :required_level
      t.integer :capacity
      t.integer :dirt_radious_x
      t.integer :dirt_radius_y

      t.timestamps null: false
    end
  end
end
