class CreatePibotes < ActiveRecord::Migration
  def change
    create_table :pibotes do |t|
      t.references :fact, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
