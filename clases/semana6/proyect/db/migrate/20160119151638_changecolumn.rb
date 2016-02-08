class Changecolumn < ActiveRecord::Migration
  def change
  	remove_column :bills, :phone, :integer
  	add_column :bills, :phone, :integer, limit: 8
  end
end
