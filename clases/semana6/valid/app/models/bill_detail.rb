class BillDetail < ActiveRecord::Base
  belongs_to :bill
  belongs_to :product

  before_create :updates_camps
  before_update :updates_camps


  private
  def updates_camps
  	#sumar los precios con relacion a la cantidad
  	@price = Product.find(self.product_id).price
  	@total = @price * self.quantity
  	self.total_price = @total 

  	#restar
  	@cant = Product.find(self.product_id).stock
  	self.product.stock = @cant - self.quantity
  	self.product.save

  	#crea una factura

  end
end
