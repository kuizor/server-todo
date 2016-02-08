class Bill < ActiveRecord::Base
  belongs_to :client

  has_many :bill_details
  has_many :products, through: :bill_details

end
