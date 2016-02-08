class CreateAnyshits < ActiveRecord::Migration
  def change
    create_table :anyshits do |t|
      t.boolean :odd

      t.timestamps null: false
    end
  end
end
