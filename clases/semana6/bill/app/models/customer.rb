class Customer < ActiveRecord::Base
	has_many :orders
	has_many :payments, through: :orders

	validates :name, :lastname, :phone, :address, presence: true
	validates :phone, :length => { minimum: 10 },
				numericality: {only_integer: true, message: "Solo Numeros"}
end
