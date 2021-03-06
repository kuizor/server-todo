class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password_digest

      t.timestamps null: false
    end
    add_index :users, :login, unique: true
  end
end
