class CreateAmyshits < ActiveRecord::Migration
  def change
    create_table :amyshits do |t|

      t.timestamps null: false
    end
  end
end
