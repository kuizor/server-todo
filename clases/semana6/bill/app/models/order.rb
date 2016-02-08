class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :payment
  
  has_many :order_details
  has_many :products, through: :order_details

  before_create :assign_initial_values
  before_update :assign_initial_values

  validates :status, presence: false

  private
  def assign_initial_values
  	self.status = "POR PAGAR"	#cOLOCA POR DEFECTO EL ESTADO HASTA QUE SE PAGUE LA FACTURA
  end
end
