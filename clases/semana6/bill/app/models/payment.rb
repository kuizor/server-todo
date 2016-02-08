class Payment < ActiveRecord::Base
  has_many :order
  has_many :customer, through: :payment

  before_create :sum_prod

  private
  def sum_prod
  	o = Order.find(product_id)

  	d = p - self.quantity
  	self.product.quantity = d
  	self.product.save
  end
end
