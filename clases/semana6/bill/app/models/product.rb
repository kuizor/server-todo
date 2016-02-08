#nombre:string, precio:integer, cantidad:integer
#solo numeros
class Product < ActiveRecord::Base
	has_many :order_details
	
	has_many :orders, through: :order_details

	validates :name, :price, :quantity, presence: true
	validates :price, :quantity,
				numericality: {only_integer: true, message: "Solo Numeros"}
end
