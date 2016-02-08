class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :matches
      t.integer :points
      t.integer :kills
      t.integer :deads
      t.integer :assists
      t.references :player, index: true, foreign_key: true
      t.references :champion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
