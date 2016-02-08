class Changecolumn < ActiveRecord::Migration
  def change
  	remove_column :customers, :phone, :integer
  	add_column :customers, :phone, :integer, limit: 8
  end
end
