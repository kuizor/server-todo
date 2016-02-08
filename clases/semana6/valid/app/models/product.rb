class Product < ActiveRecord::Base
	has_many :bill_details
end
