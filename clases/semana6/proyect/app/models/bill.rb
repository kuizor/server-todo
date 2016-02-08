class Bill < ActiveRecord::Base
	validates :name, :rif, :phone, :address, :total, presence: true
	validates :address, length:{maximum: 50, messages: "Maximo 50 caracteres"}
	validates :phone, numericality: true
	#format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
