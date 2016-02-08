class OrderDetail < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  before_create :subtract_quantity
  before_update :subtract_quantity

  private
  def subtract_quantity
  	p = Product.find(product_id).quantity

  	d = p - self.quantity
  	self.product.quantity = d
  	self.product.save
  end
end
