class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :nombre
      t.float :precio

      t.timestamps null: false
    end
  end
end
